.class public abstract Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;
.super Lmiuix/springback/trigger/BaseTrigger$Action;
.source "BaseTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/BaseTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndeterminateAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnIndeterminateActionViewListener;,
        Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_OFFSET_POINT:I

.field public static final DEFAULT_TRIGGER_TEXTIDS:[I


# instance fields
.field public mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

.field private mCountNoData:I

.field public mTriggerTextIDs:[I

.field public mTriggerTexts:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [I

    .line 4
    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_pull_to_refresh:I

    .line 6
    const/4 v2, 0x0

    .line 7
    aput v1, v0, v2

    .line 9
    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_release_to_refresh:I

    .line 11
    const/4 v2, 0x1

    .line 12
    aput v1, v0, v2

    .line 14
    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_refreshing:I

    .line 16
    const/4 v2, 0x2

    .line 17
    aput v1, v0, v2

    .line 19
    sget v1, Lmiuix/springback/R$string;->miuix_sbl_tracking_progress_labe_refreshed:I

    .line 21
    const/4 v2, 0x3

    .line 22
    aput v1, v0, v2

    .line 24
    sput-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .line 1
    invoke-static {}, Lmiuix/springback/trigger/BaseTrigger;->access$200()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    .line 2
    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    if-ltz p1, :cond_17

    .line 4
    iput-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void

    .line 5
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid offsetPoint"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    .line 14
    sget-object p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    .line 16
    iput-object p1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void
.end method

.method public constructor <init>(II[I)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    .line 18
    sget-object p1, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 p2, 0x0

    .line 19
    iput p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    if-eqz p3, :cond_16

    .line 20
    array-length p2, p3

    array-length p1, p1

    if-ne p2, p1, :cond_16

    .line 21
    iput-object p3, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void

    .line 22
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid text Ids"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(I[I)V
    .registers 5

    .line 6
    invoke-static {}, Lmiuix/springback/trigger/BaseTrigger;->access$200()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {p0, p1, v0}, Lmiuix/springback/trigger/BaseTrigger$Action;-><init>(II)V

    .line 7
    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTexts:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    if-ltz p1, :cond_25

    if-eqz p2, :cond_1d

    .line 9
    array-length p1, p2

    array-length v0, v0

    if-ne p1, v0, :cond_1d

    .line 10
    iput-object p2, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mTriggerTextIDs:[I

    return-void

    .line 11
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid text Ids"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid offsetPoint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCountNoData()I
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    .line 3
    return v0
.end method

.method public isNoData()Z
    .registers 2

    .line 1
    iget v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    .line 3
    if-lez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public notifyActionNoData()V
    .registers 3

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 3
    if-eqz v0, :cond_d

    .line 5
    iget v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 9
    iput v1, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCountNoData:I

    .line 11
    invoke-interface {v0, p0, v1}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionNoData(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;I)V

    .line 14
    :cond_d
    return-void
.end method

.method public notifyLoadCancel()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionLoadCancel(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 8
    :cond_7
    return-void
.end method

.method public notifyLoadComplete()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionComplete(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 8
    :cond_7
    return-void
.end method

.method public notifyLoadFail()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionLoadFail(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 8
    :cond_7
    return-void
.end method

.method public notifyTriggerTextIndex(ILjava/lang/String;)V
    .registers 4

    .line 1
    sget-object v0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->DEFAULT_TRIGGER_TEXTIDS:[I

    .line 3
    array-length v0, v0

    .line 4
    if-ge p1, v0, :cond_d

    .line 6
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 8
    if-eqz v0, :cond_c

    .line 10
    invoke-interface {v0, p0, p1, p2}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onUpdateTriggerTextIndex(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;ILjava/lang/String;)V

    .line 13
    :cond_c
    return-void

    .line 14
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string p2, "invalid index"

    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public startIndeterminateAction()V
    .registers 2

    .line 1
    iget-object v0, p0, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;->mCompleteListener:Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;

    .line 3
    if-eqz v0, :cond_7

    .line 5
    invoke-interface {v0, p0}, Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction$OnActionCompleteListener;->onActionStart(Lmiuix/springback/trigger/BaseTrigger$IndeterminateAction;)V

    .line 8
    :cond_7
    return-void
.end method
