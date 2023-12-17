.class public final enum Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;
.super Ljava/lang/Enum;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/ActionCommand$TargetCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum ANIMATION_ITEM:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

.field public static final enum VARIABLE_BINDER:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;


# direct methods
.method public static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v1, "SCREEN_ELEMENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v3, "VARIABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v3, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v5, "CONSTRUCTOR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->CONSTRUCTOR:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v5, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v7, "ANIMATION_ITEM"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    new-instance v7, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v9, "VARIABLE_BINDER"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->$VALUES:[Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;
    .registers 2

    const-class v0, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;
    .registers 1

    sget-object v0, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->$VALUES:[Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    invoke-virtual {v0}, [Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    return-object v0
.end method
