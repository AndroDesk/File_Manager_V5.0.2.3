.class public Lcom/miui/maml/elements/VirtualAnimatedScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "VirtualAnimatedScreenElement.java"


# static fields
.field public static final COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

.field private static final PROPERTY_NAME_RESERVE_COLOR_1:Ljava/lang/String; = "color1"

.field private static final PROPERTY_NAME_RESERVE_COLOR_2:Ljava/lang/String; = "color1"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_1:Ljava/lang/String; = "float1"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_2:Ljava/lang/String; = "float2"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_3:Ljava/lang/String; = "float3"

.field private static final PROPERTY_NAME_RESERVE_FLOAT_4:Ljava/lang/String; = "float4"

.field public static final TAG_NAME:Ljava/lang/String; = "VirtualElement"


# instance fields
.field private mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

.field private mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    .line 1
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$1;

    .line 3
    const-string v1, "color1"

    .line 5
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 10
    new-instance v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;

    .line 12
    invoke-direct {v2, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 17
    new-instance v3, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$3;

    .line 19
    const-string v4, "float1"

    .line 21
    invoke-direct {v3, v4}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$3;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v3, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

    .line 26
    new-instance v5, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;

    .line 28
    const-string v6, "float2"

    .line 30
    invoke-direct {v5, v6}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;-><init>(Ljava/lang/String;)V

    .line 33
    sput-object v5, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

    .line 35
    new-instance v7, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;

    .line 37
    const-string v8, "float3"

    .line 39
    invoke-direct {v7, v8}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;-><init>(Ljava/lang/String;)V

    .line 42
    sput-object v7, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

    .line 44
    new-instance v9, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$6;

    .line 46
    const-string v10, "float4"

    .line 48
    invoke-direct {v9, v10}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$6;-><init>(Ljava/lang/String;)V

    .line 51
    sput-object v9, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

    .line 53
    sget-object v11, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    invoke-virtual {v11, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v11, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    invoke-virtual {v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    invoke-virtual {v1, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 75
    invoke-virtual {v1, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    invoke-virtual {v1, v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    const/16 v4, 0x44d

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    const/16 v6, 0x44e

    .line 98
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v1, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    const/16 v8, 0x44f

    .line 109
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v1, v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    const/16 v10, 0x450

    .line 120
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v10

    .line 124
    invoke-virtual {v1, v10, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 129
    const/16 v11, 0x451

    .line 131
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v11

    .line 135
    invoke-virtual {v1, v11, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 140
    const/16 v12, 0x452

    .line 142
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v12

    .line 146
    invoke-virtual {v1, v12, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 156
    invoke-virtual {v0, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 161
    invoke-virtual {v0, v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 166
    invoke-virtual {v0, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 171
    invoke-virtual {v0, v7, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 176
    invoke-virtual {v0, v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 6
    new-instance v8, Lcom/miui/maml/folme/PropertyWrapper;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 15
    const-string v3, ".color1"

    .line 17
    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 28
    move-result v5

    .line 29
    const/4 v4, 0x0

    .line 30
    const-wide/16 v6, 0x0

    .line 32
    move-object v1, v8

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 36
    iput-object v8, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 38
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 47
    const-string v4, ".color2"

    .line 49
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v10

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 56
    move-result-object v11

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 60
    move-result v13

    .line 61
    const/16 v16, 0x0

    .line 63
    const-wide/16 v17, 0x0

    .line 65
    move-object v9, v1

    .line 66
    move-object/from16 v12, v16

    .line 68
    move-wide/from16 v14, v17

    .line 70
    invoke-direct/range {v9 .. v15}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 73
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 75
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 84
    const-string v4, ".float1"

    .line 86
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 89
    move-result-object v3

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 97
    move-result v6

    .line 98
    const/4 v10, 0x0

    .line 99
    const-wide/16 v12, 0x0

    .line 101
    move-object v2, v1

    .line 102
    move-object v5, v10

    .line 103
    move-wide v7, v12

    .line 104
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 107
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 109
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 118
    const-string v4, ".float2"

    .line 120
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v3

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 127
    move-result-object v4

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 131
    move-result v6

    .line 132
    move-object v2, v1

    .line 133
    move-object/from16 v5, v16

    .line 135
    move-wide/from16 v7, v17

    .line 137
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 140
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 142
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 151
    const-string v4, ".float3"

    .line 153
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v8

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 160
    move-result-object v9

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 164
    move-result v11

    .line 165
    move-object v7, v1

    .line 166
    invoke-direct/range {v7 .. v13}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 169
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 171
    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 180
    const-string v4, ".float4"

    .line 182
    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    move-result-object v3

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 189
    move-result-object v4

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    .line 193
    move-result v6

    .line 194
    move-object v2, v1

    .line 195
    move-wide/from16 v7, v17

    .line 197
    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 200
    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 202
    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;

    .line 3
    return-object p0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public isInFolmeMode()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 3
    return v0
.end method

.method public isVisible()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public tick(J)V
    .registers 3

    return-void
.end method
