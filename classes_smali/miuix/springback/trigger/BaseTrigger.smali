.class public abstract Lmiuix/springback/trigger/BaseTrigger;
.super Ljava/lang/Object;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;,
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;,
        Lmiuix/springback/trigger/BaseTrigger$SimpleAction;,
        Lmiuix/springback/trigger/BaseTrigger$Action;
    }
.end annotation


# static fields
.field private static mDefaultIndeterminateDistance:I

.field private static mDefaultSimpleEnter:I

.field private static mDefaultSimpleTrigger:I

.field private static mDefaultUpIndeterminateDistance:I


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/springback/trigger/BaseTrigger$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 15
    sget v1, Lmiuix/springback/R$dimen;->miuix_sbl_action_indeterminate_distance:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 20
    move-result v0

    .line 21
    sput v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultIndeterminateDistance:I

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object v0

    .line 27
    sget v1, Lmiuix/springback/R$dimen;->miuix_sbl_action_upindeterminate_distance:I

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v0

    .line 33
    sput v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultUpIndeterminateDistance:I

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    move-result-object p1

    .line 39
    sget v0, Lmiuix/springback/R$dimen;->miuix_sbl_action_simple_enter:I

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result p1

    .line 45
    sput p1, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleEnter:I

    .line 47
    sput p1, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleTrigger:I

    .line 49
    return-void
.end method

.method public static synthetic access$000()I
    .registers 1

    .line 1
    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleEnter:I

    .line 3
    return v0
.end method

.method public static synthetic access$100()I
    .registers 1

    .line 1
    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultSimpleTrigger:I

    .line 3
    return v0
.end method

.method public static synthetic access$200()I
    .registers 1

    .line 1
    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultIndeterminateDistance:I

    .line 3
    return v0
.end method

.method public static synthetic access$300()I
    .registers 1

    .line 1
    sget v0, Lmiuix/springback/trigger/BaseTrigger;->mDefaultUpIndeterminateDistance:I

    .line 3
    return v0
.end method


# virtual methods
.method public addAction(Lmiuix/springback/trigger/BaseTrigger$Action;)V
    .registers 4

    .line 1
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    iput-object p1, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 7
    goto :goto_19

    .line 8
    :cond_7
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 10
    sget-object v1, Lmiuix/springback/trigger/BaseTrigger$Action;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    .line 12
    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    .line 15
    move-result v0

    .line 16
    if-gez v0, :cond_1a

    .line 18
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 20
    neg-int v0, v0

    .line 21
    add-int/lit8 v0, v0, -0x1

    .line 23
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26
    :goto_19
    return-void

    .line 27
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    const-string v0, "action conflict."

    .line 31
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1
.end method

.method public containAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_d

    .line 7
    iget-object p1, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 9
    if-eqz p1, :cond_b

    .line 11
    goto :goto_c

    .line 12
    :cond_b
    move v1, v2

    .line 13
    :goto_c
    return v1

    .line 14
    :cond_d
    if-eqz p1, :cond_18

    .line 16
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_18

    .line 24
    return v1

    .line 25
    :cond_18
    return v2
.end method

.method public getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/springback/trigger/BaseTrigger$Action;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getIndeterminateAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1d

    .line 10
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 18
    if-eqz v1, :cond_1a

    .line 20
    instance-of v2, v1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 22
    if-eqz v2, :cond_1a

    .line 24
    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 26
    return-object v1

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public getIndeterminateUpAction()Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 3
    check-cast v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 5
    return-object v0
.end method

.method public getSimpleAction()Lmiuix/springback/trigger/BaseTrigger$SimpleAction;
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1d

    .line 10
    iget-object v1, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 18
    if-eqz v1, :cond_1a

    .line 20
    instance-of v2, v1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 22
    if-eqz v2, :cond_1a

    .line 24
    check-cast v1, Lmiuix/springback/trigger/BaseTrigger$SimpleAction;

    .line 26
    return-object v1

    .line 27
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    .line 29
    goto :goto_1

    .line 30
    :cond_1d
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public abstract isActionRunning()Z
.end method

.method public abstract isActionRunning(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
.end method

.method public removeAction(Lmiuix/springback/trigger/BaseTrigger$Action;)Z
    .registers 5

    .line 1
    invoke-virtual {p0}, Lmiuix/springback/trigger/BaseTrigger;->isActionRunning()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_8
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_15

    .line 15
    check-cast p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;

    .line 17
    iput-object v2, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction;->mUpDataListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateUpAction$OnUpActionDataListener;

    .line 19
    iput-object v2, p0, Lmiuix/springback/trigger/BaseTrigger;->mUpAction:Lmiuix/springback/trigger/BaseTrigger$Action;

    .line 21
    return v1

    .line 22
    :cond_15
    if-eqz p1, :cond_2d

    .line 24
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 26
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2d

    .line 32
    instance-of v0, p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 34
    if-eqz v0, :cond_28

    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;

    .line 39
    iput-object v2, v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 41
    :cond_28
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger;->mActions:Ljava/util/List;

    .line 43
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 46
    :cond_2d
    return v1
.end method
