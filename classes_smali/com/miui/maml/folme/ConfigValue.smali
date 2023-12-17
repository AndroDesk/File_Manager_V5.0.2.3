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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f7fffff  # Float.MAX_VALUE

    iput v0, p0, Lcom/miui/maml/folme/ConfigValue;->mFromSpeed:F

    new-instance v0, Landroidx/collection/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mRelatedProperty:Landroidx/collection/b;

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnUpdateCallback:Landroidx/collection/b;

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnBeginCallback:Landroidx/collection/b;

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0, v1}, Landroidx/collection/b;-><init>(I)V

    iput-object v0, p0, Lcom/miui/maml/folme/ConfigValue;->mOnCompleteCallback:Landroidx/collection/b;

    return-void
.end method
