.class public Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;
.super Ljava/lang/Object;
.source "AttrDataBinders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/AttrDataBinders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttrDataBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;,
        Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    }
.end annotation


# instance fields
.field public mAttr:Ljava/lang/String;

.field private mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

.field public mData:Ljava/lang/String;

.field public mTarget:Ljava/lang/String;

.field public mVars:Lcom/miui/maml/data/ContextVariables;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "target"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    const-string v0, "attr"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    const-string v0, "data"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mVars:Lcom/miui/maml/data/ContextVariables;

    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->createBinder(Ljava/lang/String;)Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mAttr:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mData:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    iget-object p1, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    if-eqz p1, :cond_42

    return-void

    :cond_42
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid AttrDataBinder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private createBinder(Ljava/lang/String;)Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$TextBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_16
    const-string v0, "paras"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    const-string v0, "params"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_60

    :cond_27
    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$NameBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_35
    const-string v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$BitmapBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_43
    const-string v0, "src"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_51
    const-string v0, "srcid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5f

    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$SrcIdBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1

    :cond_5f
    return-object v1

    :cond_60
    :goto_60
    new-instance p1, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;

    invoke-direct {p1, p0, v1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$ParamsBinder;-><init>(Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;Lcom/miui/maml/elements/AttrDataBinders$1;)V

    return-object p1
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ElementGroup;)Z
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mTarget:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->mBinder:Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;

    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder$Binder;->bind(Lcom/miui/maml/elements/ScreenElement;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    const/4 p1, 0x1

    return p1

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    const/4 p1, 0x0

    return p1
.end method
