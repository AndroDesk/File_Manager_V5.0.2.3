.class Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;
.super Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SrcIdBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ScreenElement;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    iget-object v1, v0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lcom/miui/maml/data/ContextVariables;

    iget-object v0, v0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/miui/maml/data/ContextVariables;->getDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    check-cast p1, Lcom/miui/maml/elements/ImageScreenElement;

    if-nez v0, :cond_11

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_15
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/elements/ImageScreenElement;->setSrcId(D)V

    return-void
.end method
