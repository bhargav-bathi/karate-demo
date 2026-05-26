package examples.utils;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.fge.jsonschema.main.JsonSchemaFactory;

public class JsonSchemaUtil {

    public static boolean isValid(
            String actual,
            String schema
    ) throws Exception {

        ObjectMapper mapper =
                new ObjectMapper();

        JsonNode actualNode =
                mapper.readTree(actual);

        JsonNode schemaNode =
                mapper.readTree(schema);

        return JsonSchemaFactory
                .byDefault()
                .getJsonSchema(schemaNode)
                .validate(actualNode)
                .isSuccess();
    }
}