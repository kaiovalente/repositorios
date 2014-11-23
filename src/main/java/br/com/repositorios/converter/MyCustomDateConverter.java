package br.com.repositorios.converter;

import java.lang.reflect.Type;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import br.com.caelum.vraptor.serialization.gson.DateGsonConverter;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonParseException;
import com.google.gson.JsonPrimitive;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import com.google.gson.JsonSyntaxException;

public class MyCustomDateConverter extends DateGsonConverter implements
		JsonDeserializer<Date>, JsonSerializer<Date> {
	
	private final SimpleDateFormat iso8601Format = new SimpleDateFormat(
			"yyyy-MM-dd'T'HH:mm:ss", Locale.forLanguageTag("BRT"));

	@Override
	public JsonElement serialize(Date date, Type typeOfSrc,
			JsonSerializationContext context) {
		return new JsonPrimitive(iso8601Format.format(date).toString());
	}
	
	@Override
	public Date deserialize(JsonElement json, Type typeOfT,
			JsonDeserializationContext context) throws JsonParseException {
		try {
			return iso8601Format.parse(json.getAsString());
		} catch (ParseException e) {
			throw new JsonSyntaxException(json.getAsString(), e);
		}
	}
}