.class Lmiuix/animation/internal/RunnerHandler$SetToInfo;
.super Ljava/lang/Object;
.source "RunnerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/internal/RunnerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetToInfo"
.end annotation


# instance fields
.field public state:Lmiuix/animation/controller/AnimState;

.field public target:Lmiuix/animation/IAnimTarget;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/internal/RunnerHandler$1;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler$SetToInfo;-><init>()V

    return-void
.end method