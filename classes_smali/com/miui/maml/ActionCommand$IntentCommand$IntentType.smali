.class final enum Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$IntentCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IntentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field public static final enum Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field public static final enum Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field public static final enum Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

.field public static final enum Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    const-string v1, "Activity"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Activity:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v1, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    const-string v3, "Broadcast"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Broadcast:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v3, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    const-string v5, "Service"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Service:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    new-instance v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    const-string v7, "Var"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->Var:Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->$VALUES:[Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;
    .registers 2

    const-class v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;
    .registers 1

    sget-object v0, Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->$VALUES:[Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$IntentCommand$IntentType;

    return-object v0
.end method
