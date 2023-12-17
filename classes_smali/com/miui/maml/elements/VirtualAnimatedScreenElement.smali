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

    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$1;

    const-string v1, "color1"

    invoke-direct {v0, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_1:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;

    invoke-direct {v2, v1}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->COLOR_2:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v3, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$3;

    const-string v4, "float1"

    invoke-direct {v3, v4}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$3;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_1:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v5, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;

    const-string v6, "float2"

    invoke-direct {v5, v6}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$4;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_2:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v7, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;

    const-string v8, "float3"

    invoke-direct {v7, v8}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$5;-><init>(Ljava/lang/String;)V

    sput-object v7, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_3:Lcom/miui/maml/folme/AnimatedProperty;

    new-instance v9, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$6;

    const-string v10, "float4"

    invoke-direct {v9, v10}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement$6;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->FLOAT_4:Lcom/miui/maml/folme/AnimatedProperty;

    sget-object v11, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v11, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v4, 0x44d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v6, 0x44e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v8, 0x44f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v10, 0x450

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v10, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v11, 0x451

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v11, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v12, 0x452

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v1, v12, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v7, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v9, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .registers 22

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    new-instance v8, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v3, ".color1"

    invoke-static {v1, v2, v3}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v5

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v8, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v4, ".color2"

    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v13

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object v9, v1

    move-object/from16 v12, v16

    move-wide/from16 v14, v17

    invoke-direct/range {v9 .. v15}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v4, ".float1"

    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v2, v1

    move-object v5, v10

    move-wide v7, v12

    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v4, ".float2"

    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-object/from16 v5, v16

    move-wide/from16 v7, v17

    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v4, ".float3"

    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v11

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v1, Lcom/miui/maml/folme/PropertyWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    const-string v4, ".float4"

    invoke-static {v2, v3, v4}, Lf0/e;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->isInFolmeMode()Z

    move-result v6

    move-object v2, v1

    move-wide/from16 v7, v17

    invoke-direct/range {v2 .. v8}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    iput-object v1, v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor1Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mColor2Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat1Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat2Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat3Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/VirtualAnimatedScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;->mFloat4Property:Lcom/miui/maml/folme/PropertyWrapper;

    return-object p0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public isInFolmeMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

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
