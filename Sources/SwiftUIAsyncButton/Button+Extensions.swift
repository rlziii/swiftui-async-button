import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension Button {
    /// Creates a button that displays a custom label.
    ///
    /// - Parameters:
    ///   - asyncAction: The async action to perform when the user triggers the button.
    ///   - label: A view that describes the purpose of the button's `action`.
    init(asyncAction: @escaping () async -> Void, @ViewBuilder label: () -> Label) {
        self.init(action: { Task { await asyncAction() }}, label: label)
    }
}

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension Button where Label == Text {
    /// Creates a button that generates its label from a localized string key.
    ///
    /// This initializer creates a ``Text`` view on your behalf, and treats the
    /// localized key similar to ``Text/init(_:tableName:bundle:comment:)``. See
    /// ``Text`` for more information about localizing strings.
    ///
    /// To initialize a button with a string variable, use
    /// ``Button/init(_:action:)-lpm7`` instead.
    ///
    /// - Parameters:
    ///   - titleKey: The key for the button's localized title, that describes
    ///     the purpose of the button's `action`.
    ///   - asyncAction: The async action to perform when the user triggers the button.
    init(_ titleKey: LocalizedStringKey, asyncAction: @escaping () async -> Void) {
        self.init(titleKey, action: { Task { await asyncAction() }})
    }

    /// Creates a button that generates its label from a string.
    ///
    /// This initializer creates a ``Text`` view on your behalf, and treats the
    /// title similar to ``Text/init(_:)-9d1g4``. See ``Text`` for more
    /// information about localizing strings.
    ///
    /// To initialize a button with a localized string key, use
    /// ``Button/init(_:action:)-1asy`` instead.
    ///
    /// - Parameters:
    ///   - title: A string that describes the purpose of the button's `action`.
    ///   - asyncAction: The async action to perform when the user triggers the button.
    init<S: StringProtocol>(_ title: S, asyncAction: @escaping () async -> Void) {
        self.init(title, action: { Task { await asyncAction() }})
    }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
public extension Button {
    /// Creates a button with a specified role that displays a custom label.
    ///
    /// - Parameters:
    ///   - role: An optional semantic role that describes the button. A value of
    ///     `nil` means that the button doesn't have an assigned role.
    ///   - asyncAction: The async action to perform when the user interacts with the button.
    ///   - label: A view that describes the purpose of the button's `action`.
    init(role: ButtonRole?, asyncAction: @escaping () async -> Void, @ViewBuilder label: () -> Label) {
        self.init(role: role, action: { Task { await asyncAction() }}, label: label)
    }
}

@available(iOS 15.0, macOS 12.0, tvOS 15.0, watchOS 8.0, *)
public extension Button where Label == Text {
    /// Creates a button with a specified role that generates its label from a
    /// localized string key.
    ///
    /// This initializer creates a ``Text`` view on your behalf, and treats the
    /// localized key similar to ``Text/init(_:tableName:bundle:comment:)``. See
    /// ``Text`` for more information about localizing strings.
    ///
    /// To initialize a button with a string variable, use
    /// ``init(_:role:action:)-8y5yk`` instead.
    ///
    /// - Parameters:
    ///   - titleKey: The key for the button's localized title, that describes
    ///     the purpose of the button's `action`.
    ///   - role: An optional semantic role describing the button. A value of
    ///     `nil` means that the button doesn't have an assigned role.
    ///   - asyncAction: The async action to perform when the user triggers the button.
    init(_ titleKey: LocalizedStringKey, role: ButtonRole?, asyncAction: @escaping () async -> Void) {
        self.init(titleKey, role: role, action: { Task { await asyncAction() }})
    }

    /// Creates a button with a specified role that generates its label from a
    /// string.
    ///
    /// This initializer creates a ``Text`` view on your behalf, and treats the
    /// title similar to ``Text/init(_:)-9d1g4``. See ``Text`` for more
    /// information about localizing strings.
    ///
    /// To initialize a button with a localized string key, use
    /// ``init(_:role:action:)-93ek6`` instead.
    ///
    /// - Parameters:
    ///   - title: A string that describes the purpose of the button's `action`.
    ///   - role: An optional semantic role describing the button. A value of
    ///     `nil` means that the button doesn't have an assigned role.
    ///   - asyncAction: The async action to perform when the user interacts with the button.
    init<S: StringProtocol>(_ title: S, role: ButtonRole?, asyncAction: @escaping () async -> Void) {
        self.init(title, role: role, action: { Task { await asyncAction() }})
    }
}

