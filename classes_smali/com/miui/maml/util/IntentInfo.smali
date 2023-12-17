.class public Lcom/miui/maml/util/IntentInfo;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/util/IntentInfo$Extra;,
        Lcom/miui/maml/util/IntentInfo$Type;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TaskVariable"


# instance fields
.field private mClassNameExp:Lcom/miui/maml/data/Expression;

.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/maml/util/IntentInfo$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNameExp:Lcom/miui/maml/data/Expression;

.field private mTask:Lcom/miui/maml/util/Task;

.field private mUri:Ljava/lang/String;

.field private mUriExp:Lcom/miui/maml/data/Expression;

.field private mVariables:Lcom/miui/maml/data/Variables;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-nez p1, :cond_d

    return-void

    :cond_d
    invoke-static {p1}, Lcom/miui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lcom/miui/maml/util/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    iput-object p2, p0, Lcom/miui/maml/util/IntentInfo;->mVariables:Lcom/miui/maml/data/Variables;

    const-string v0, "packageExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mPackageNameExp:Lcom/miui/maml/data/Expression;

    const-string v0, "classExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mClassNameExp:Lcom/miui/maml/data/Expression;

    const-string v0, "uri"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    const-string v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/IntentInfo;->mUriExp:Lcom/miui/maml/data/Expression;

    invoke-direct {p0, p1}, Lcom/miui/maml/util/IntentInfo;->loadExtras(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/util/IntentInfo;)Lcom/miui/maml/data/Variables;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mVariables:Lcom/miui/maml/data/Variables;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/miui/maml/util/IntentInfo;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .registers 4

    new-instance v0, Lcom/miui/maml/util/IntentInfo$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/util/IntentInfo$1;-><init>(Lcom/miui/maml/util/IntentInfo;)V

    const-string v1, "Extra"

    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/miui/maml/util/Task;->id:Ljava/lang/String;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public set(Lcom/miui/maml/util/Task;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .registers 9

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/miui/maml/util/Task;->action:Ljava/lang/String;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/miui/maml/util/Task;->type:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    move-object v0, v1

    :goto_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :cond_23
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/miui/maml/util/Task;->category:Ljava/lang/String;

    goto :goto_2b

    :cond_2a
    move-object v0, v1

    :goto_2b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :cond_34
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v0, :cond_3b

    iget-object v0, v0, Lcom/miui/maml/util/Task;->packageName:Ljava/lang/String;

    goto :goto_3c

    :cond_3b
    move-object v0, v1

    :goto_3c
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mPackageNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    :cond_44
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mTask:Lcom/miui/maml/util/Task;

    if-eqz v2, :cond_4a

    iget-object v1, v2, Lcom/miui/maml/util/Task;->className:Ljava/lang/String;

    :cond_4a
    iget-object v2, p0, Lcom/miui/maml/util/IntentInfo;->mClassNameExp:Lcom/miui/maml/data/Expression;

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v1

    :cond_52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_65

    :cond_62
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_65
    :goto_65
    invoke-static {v0, v1, p1}, Lcom/miui/maml/util/CustomUtils;->replaceCameraIntentInfoOnF3M(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/maml/util/IntentInfo;->mUriExp:Lcom/miui/maml/data/Expression;

    if-eqz v1, :cond_72

    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    :cond_72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_7f
    iget-object v0, p0, Lcom/miui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-eqz v0, :cond_103

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_87
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_103

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/maml/util/IntentInfo$Extra;

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->isConditionTrue()Z

    move-result v2

    if-eqz v2, :cond_fb

    sget-object v2, Lcom/miui/maml/util/IntentInfo$2;->$SwitchMap$com$miui$maml$util$IntentInfo$Type:[I

    iget-object v3, v1, Lcom/miui/maml/util/IntentInfo$Extra;->mType:Lcom/miui/maml/util/IntentInfo$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_104

    goto :goto_87

    :pswitch_a7  #0x6
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_b7

    const/4 v1, 0x1

    goto :goto_b8

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_87

    :pswitch_bc  #0x5
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_87

    :pswitch_c8  #0x4
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v3

    double-to-float v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_87

    :pswitch_d5  #0x3
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v3

    double-to-long v3, v3

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_87

    :pswitch_e2  #0x2
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v3

    double-to-int v1, v3

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_87

    :pswitch_ef  #0x1
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_87

    :cond_fb
    invoke-virtual {v1}, Lcom/miui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_87

    :cond_103
    return-void

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_ef  #00000001
        :pswitch_e2  #00000002
        :pswitch_d5  #00000003
        :pswitch_c8  #00000004
        :pswitch_bc  #00000005
        :pswitch_a7  #00000006
    .end packed-switch
.end method
