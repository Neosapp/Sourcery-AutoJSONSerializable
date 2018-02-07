// Generated using Sourcery 0.7.2 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

// swiftlint:disable cyclomatic_complexity file_length function_body_length line_length

import Foundation

// MARK: - AutoJSONDeserializable for classes, protocols, structs

// MARK: - ArrayProperty AutoJSONDeserializable
extension ArrayProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let array = try (JSONDictionary["array"] as? [Any])?.flatMap(MultiTypesProperties.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "array", value: JSONDictionary["array"])
        }
        self.array = array
    }
}

// MARK: - BasicTypesArrayProperty AutoJSONDeserializable
extension BasicTypesArrayProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let doubleArray = (JSONDictionary["doubleArray"] as? [Double]) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "doubleArray", value: JSONDictionary["doubleArray"])
        }
        self.doubleArray = doubleArray
        guard let integerArray = (JSONDictionary["integerArray"] as? [Int]) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "integerArray", value: JSONDictionary["integerArray"])
        }
        self.integerArray = integerArray
        guard let stringArray = (JSONDictionary["stringArray"] as? [String]) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "stringArray", value: JSONDictionary["stringArray"])
        }
        self.stringArray = stringArray
    }
}

// MARK: - DateArrayProperty AutoJSONDeserializable
extension DateArrayProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let dateArray = try (JSONDictionary["dateArray"] as? [Any])?.flatMap(Date.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "dateArray", value: JSONDictionary["dateArray"])
        }
        self.dateArray = dateArray
    }
}

// MARK: - DateProperty AutoJSONDeserializable
extension DateProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let date = try (JSONDictionary["date"]).flatMap(Date.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "date", value: JSONDictionary["date"])
        }
        self.date = date
        let optionalDate = try (JSONDictionary["optional_date"]).flatMap(Date.init(JSONObject:))
        self.optionalDate = optionalDate
    }
}

// MARK: - EnumArrayProperty AutoJSONDeserializable
extension EnumArrayProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let enumsArray = (JSONDictionary["enumsArray"] as? [String])?.flatMap({ StringEnum(rawValue: $0) }) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "enumsArray", value: JSONDictionary["enumsArray"])
        }
        self.enumsArray = enumsArray
    }
}

// MARK: - EnumWithCustomSerdeProperties AutoJSONDeserializable
extension EnumWithCustomSerdeProperties: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let intEnumUsingStringSerde = try (JSONDictionary["intEnumUsingStringSerde"]).flatMap(IntEnumUsingStringSerde.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "intEnumUsingStringSerde", value: JSONDictionary["intEnumUsingStringSerde"])
        }
        self.intEnumUsingStringSerde = intEnumUsingStringSerde
        guard let customSerdeEnum = try (JSONDictionary["customSerdeEnum"]).flatMap(CustomSerdeEnum.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "customSerdeEnum", value: JSONDictionary["customSerdeEnum"])
        }
        self.customSerdeEnum = customSerdeEnum
        let optionalCustomSerdeEnum = try (JSONDictionary["optionalCustomSerdeEnum"]).flatMap(CustomSerdeEnum.init(JSONObject:))
        self.optionalCustomSerdeEnum = optionalCustomSerdeEnum
    }
}

// MARK: - IntEnumProperty AutoJSONDeserializable
extension IntEnumProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let enumValue = (JSONDictionary["enumValue"] as? Int).flatMap({ IntEnum(rawValue: $0) }) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "enumValue", value: JSONDictionary["enumValue"])
        }
        self.enumValue = enumValue
        let optionalEnumValue = (JSONDictionary["optionalEnumValue"] as? Int).flatMap({ IntEnum(rawValue: $0) })
        self.optionalEnumValue = optionalEnumValue
    }
}

// MARK: - JSONDeserializableProperty AutoJSONDeserializable
extension JSONDeserializableProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let entity = try (JSONDictionary["entity"]).flatMap(Entity.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "entity", value: JSONDictionary["entity"])
        }
        self.entity = entity
        let optionalEntity = try (JSONDictionary["optionalEntity"]).flatMap(Entity.init(JSONObject:))
        self.optionalEntity = optionalEntity
        let nilEntity = try (JSONDictionary["nilEntity"]).flatMap(Entity.init(JSONObject:))
        self.nilEntity = nilEntity
        guard let annotatedEntity = try (JSONDictionary["annotated_entity"]).flatMap(Entity.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "annotated_entity", value: JSONDictionary["annotated_entity"])
        }
        self.annotatedEntity = annotatedEntity
        let optionalAnnotatedEntity = try (JSONDictionary["optional_annotated_entity"]).flatMap(Entity.init(JSONObject:))
        self.optionalAnnotatedEntity = optionalAnnotatedEntity
    }
}

// MARK: - JSONDeserializableProperty.Entity AutoJSONDeserializable
extension JSONDeserializableProperty.Entity: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let name = (JSONDictionary["name"] as? String) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "name", value: JSONDictionary["name"])
        }
        self.name = name
    }
}

// MARK: - MultiTypesProperties AutoJSONDeserializable
extension MultiTypesProperties: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let string = (JSONDictionary["string"] as? String) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "string", value: JSONDictionary["string"])
        }
        self.string = string
        guard let integer = (JSONDictionary["integer"] as? Int) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "integer", value: JSONDictionary["integer"])
        }
        self.integer = integer
        let optionalInteger = (JSONDictionary["optionalInteger"] as? Int)
        self.optionalInteger = optionalInteger
        guard let double = (JSONDictionary["double"] as? Double) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "double", value: JSONDictionary["double"])
        }
        self.double = double
        let optionalDouble = (JSONDictionary["optionalDouble"] as? Double)
        self.optionalDouble = optionalDouble
    }
}

// MARK: - OptionalProperty AutoJSONDeserializable
extension OptionalProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        let name = (JSONDictionary["name"] as? String)
        self.name = name
    }
}

// MARK: - SinglePropertyNoAnnotation AutoJSONDeserializable
extension SinglePropertyNoAnnotation: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let name = (JSONDictionary["name"] as? String) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "name", value: JSONDictionary["name"])
        }
        self.name = name
    }
}

// MARK: - SinglePropertyWithKeyPathAnnotation AutoJSONDeserializable
extension SinglePropertyWithKeyPathAnnotation: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let name = (JSONDictionary["label"] as? String) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "label", value: JSONDictionary["label"])
        }
        self.name = name
    }
}

// MARK: - StringEnumProperty AutoJSONDeserializable
extension StringEnumProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let enumValue = (JSONDictionary["enumValue"] as? String).flatMap({ StringEnum(rawValue: $0) }) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "enumValue", value: JSONDictionary["enumValue"])
        }
        self.enumValue = enumValue
        let optionalEnumValue = (JSONDictionary["optionalEnumValue"] as? String).flatMap({ StringEnum(rawValue: $0) })
        self.optionalEnumValue = optionalEnumValue
    }
}

// MARK: - TypealiasedDateArrayProperty AutoJSONDeserializable
extension TypealiasedDateArrayProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let momentArray = try (JSONDictionary["momentArray"] as? [Any])?.flatMap(Date.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "momentArray", value: JSONDictionary["momentArray"])
        }
        self.momentArray = momentArray
    }
}

// MARK: - TypealiasedDateProperty AutoJSONDeserializable
extension TypealiasedDateProperty: JSONDeserializable {
    internal init(JSONObject: Any) throws {
        guard let JSONDictionary = JSONObject as? [String: Any] else {
            throw AutoJSONDeserializableError.invalidJSONObject(JSONObject)
        }
        guard let momentInTime = try (JSONDictionary["momentInTime"]).flatMap(MomentInTime.init(JSONObject:)) else {
            throw AutoJSONDeserializableError.missingKeyOrInvalid(key: "momentInTime", value: JSONDictionary["momentInTime"])
        }
        self.momentInTime = momentInTime
        let optionalMomentInTime = try (JSONDictionary["optionalMomentInTime"]).flatMap(MomentInTime.init(JSONObject:))
        self.optionalMomentInTime = optionalMomentInTime
    }
}

// MARK: -
