.class final enum Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$TickListenerCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

.field public static final enum INVALID:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

.field public static final enum SET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

.field public static final enum UNSET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 1
    new-instance v0, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 3
    const-string v1, "INVALID"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->INVALID:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 11
    new-instance v1, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 13
    const-string v3, "SET"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 21
    new-instance v3, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 23
    const-string v5, "UNSET"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 31
    const/4 v5, 0x3

    .line 32
    new-array v5, v5, [Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 34
    aput-object v0, v5, v2

    .line 36
    aput-object v1, v5, v4

    .line 38
    aput-object v3, v5, v6

    .line 40
    sput-object v5, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 42
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;
    .registers 2

    .line 1
    const-class v0, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;
    .registers 1

    .line 1
    sget-object v0, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->$VALUES:[Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 3
    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 9
    return-object v0
.end method
