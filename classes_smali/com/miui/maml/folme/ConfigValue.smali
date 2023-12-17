.class public Lcom/miui/maml/folme/ConfigValue;
.super Ljava/lang/Object;
.source "ConfigValue.java"


# instance fields
.field public mDelay:J

.field public mEase:Lmiuix/animation/utils/EaseManager$EaseStyle;

.field public mFromSpeed:F

.field public mHasFromSpeed:Z

.field public mOnBeginCallback:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnCompleteCallback:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mOnUpdateCallback:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mRelatedProperty:Landroidx/collection/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x7f7fffff  # Float.MAX_VALUE

    .line 7
    iput v0, p0, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    .line 9
    new-instance v0, Landroidx/collection/b;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 15
    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/b;

    .line 17
    new-instance v0, Landroidx/collection/b;

    .line 19
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 22
    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/b;

    .line 24
    new-instance v0, Landroidx/collection/b;

    .line 26
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 29
    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/b;

    .line 31
    new-instance v0, Landroidx/collection/b;

    .line 33
    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    .line 36
    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/b;

    .line 38
    return-void
.end method
