Changelog
=========

The changelog is in reverse chronological order, as usual.

### 0.9.0

- BREAKING CHANGES, The `Sendable` Release: makes all types adopt Swift Sendable, which means:
    - All types are now structs, all abstract types protocols. Resources and elements used to be `open class` and are now `public struct`
    - The initializers and Codable interfaces didn't change, depending on how "FHIRModels" is used in your projects there may be zero to lots of adjustments necessary
    - The top level `FHIRType` protocol is now `Sendable`
    - Abstract types, including but not exclusively `Resource` and `DomainResource`, can no longer be instantiated (and probably never needed to be), and `FHIRAbstractResource` has been removed
    - Specialized elements such as `Age`, `Count`, `Distance`, and `Duration` are mere typealiases of `Quantity`
    - Since the FHIR data models define recursive structures (e.g. "Patient" -> "Identifier" -> "Reference" -> "Identifier" -> ...), all-struct doesn't work in Swift. To work around this cyle, `Identifier` and `Reference` are now `final class, Sendable`
    - The second infinite loop is around `ResourceProxy` and `Bundle`. To break this cycle, `ResourceProxy.bundle` is now a `indirect case`
    - This finally addresses https://github.com/apple/FHIRModels/issues/26
    - Bump Swift tools version to 6.2
- Update _build_ models to 6.0.0-ballot4 (http://build.fhir.org/)

### 0.8.0

- BREAKING CHANGES: update _build_ models to 6.0.0-ballot3 (http://build.fhir.org/)
- Address https://github.com/apple/FHIRModels/issues/38 (thanks to [Lukas Kollmer](https://github.com/lukaskollmer) for the idea)
- Move some unit tests to Swift Testing; since with testing https://github.com/apple/FHIRModels/issues/39 cannot be reproduced, resolves #39

### 0.7.0

- Make most primitive types (such as `FHIRBool` and `FHIRDateComponents`) `Sendable`
- Address https://github.com/apple/FHIRModels/issues/36 (thanks to [Lukas Kollmer](https://github.com/lukaskollmer) for the report)
- Fix time zone description that's off for dates in timezone with DST (again, thanks to [Lukas Kollmer](https://github.com/lukaskollmer) for the detailed report!). Fixes https://github.com/apple/FHIRModels/issues/35
- Bump Swift tools version to 5.7 

### 0.6.1

- Make `FHIRPrimitve` explicitly `Equatable` (it already was via `Hashable`) and add negation overloads (fixes https://github.com/apple/FHIRModels/issues/30)
- Make the build work on Windows (thanks to @fritzt0, fixes https://github.com/apple/FHIRModels/issues/33)

## 0.6.0

- BREAKING CHANGES: update _build_ models to 6.0.0-ballot2 (http://build.fhir.org/)

## 0.5.0

- Add R5 release
- Add R4B release

## 0.4.0

- BREAKING CHANGES: fix duplicate code system names resulting in https://github.com/apple/FHIRModels/issues/11
- BREAKING CHANGES: regenerate R4 models to resolve https://github.com/apple/FHIRModels/issues/15
- Update _build_ models to 4.6.0-048af26
- Enhancement: make dates & times conform to `Comparable` and `ExpressibleAsNSDate`
- Fix an issue where times with milliseconds were not proper ISO formatted in certain locales

### 0.3.2

- Fix time formatting in certain locales: https://github.com/apple/FHIRModels/issues/7

### 0.3.1

- Add extensions for converting FHIRDate, DateTime, and Instant to NSDate
- Add extensions for converting NSDate to FHIRTime, FHIRDate, DateTime, and Instant

## 0.3.0

- Update _build_ models to 4.5.0-a621ed4bdc (http://hl7.org/fhir/2020Sep/)

### 0.2.1

- Successfully build library under Linux (#4)
- Add `extensions(for:) -> [Extension]` utility method
- Add `var resourceType: String` to `ResourceProxy`
- Add `CHANGELOG.md`

## 0.2.0

- Add STU3 support (#2)

## 0.1.0

- Initial release with DSTU2, R4 and 4.4 support
