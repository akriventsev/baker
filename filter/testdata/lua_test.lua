function swapFieldsWithIndex(rec, next)
    local f1, f2
    f1 = rec:get(1)
    rec:set(1, rec:get(2))
    rec:set(2, f1)
    next(rec)
end

function swapFieldsWithNames(rec, next)
    local f1, f2
    f1 = rec:get(fieldNames["bar"])
    rec:set(1, rec:get(fieldNames["baz"]))
    rec:set(2, f1)
    next(rec)
end

function _createRecord(rec, next)
    newrec = createRecord()
    newrec:set(0, "hey")
    newrec:set(1, "ho")
    newrec:set(2, "let's go!")
    next(newrec)
    next(rec)
end

function _validateRecord(rec, next)
    ok, idx = validateRecord(rec)
    if ok == false and idx == 0 then
        rec:set(0, "good")
    else
        rec:set(0, "bad")
    end
    next(rec)
end