.class Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;
.super Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParamsBinder"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ScreenElement;)V
    .registers 5

    .line 1
    check-cast p1, Lcom/miui/maml/elements/TextScreenElement;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;->this$0:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    .line 8
    iget-object v2, v1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lcom/miui/maml/data/ContextVariables;

    .line 10
    iget-object v1, v1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v1}, Lcom/miui/maml/data/ContextVariables;->getVar(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 19
    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/TextScreenElement;->setParams([Ljava/lang/Object;)V

    .line 22
    return-void
.end method
