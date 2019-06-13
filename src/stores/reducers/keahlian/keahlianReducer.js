let keahlian = null

export const keahlianReducer = (state=keahlian, action) => {
    switch (action.type) {
        case "READ_KEAHLIAN":
            return action.payload

        case "SET_KEAHLIAN":
            keahlian = action.payload
            return keahlian

        default:
            return []
    }
}