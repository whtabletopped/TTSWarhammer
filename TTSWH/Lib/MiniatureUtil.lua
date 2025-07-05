local MiniatureUtil = {}

function MiniatureUtil.printTest()
    print("MiniatureUtil library loaded!")
end

function MiniatureUtil.getManagerSingleton()
    getObjectFromGUID("93d8fc")
    return MiniatureUtil
end