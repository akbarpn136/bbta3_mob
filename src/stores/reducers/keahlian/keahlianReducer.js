let keahlian = []

export const keahlianReducer = (state=keahlian, action) => {
    switch (action.type) {
        case "READ_KEAHLIAN":
            return state

        case "SET_KEAHLIAN":
            keahlian = action.payload

            return keahlian

        default:
            return keahlian
    }
}