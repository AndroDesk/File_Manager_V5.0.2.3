.class final enum Lcom/miui/maml/ActionCommand$AnimationProperty$Type;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$AnimationProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$AnimationProperty$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

.field public static final enum RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->INVALID:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    new-instance v1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const-string v3, "PLAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    new-instance v3, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const-string v5, "PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PAUSE:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    new-instance v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const-string v7, "RESUME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->RESUME:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    new-instance v7, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const-string v9, "PLAY_WITH_PARAMS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->PLAY_WITH_PARAMS:Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$AnimationProperty$Type;
    .registers 2

    const-class v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;
    .registers 1

    sget-object v0, Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->$VALUES:[Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$AnimationProperty$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$AnimationProperty$Type;

    return-object v0
.end method
