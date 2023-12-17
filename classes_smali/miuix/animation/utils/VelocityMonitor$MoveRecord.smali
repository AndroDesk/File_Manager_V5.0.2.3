.class Lmiuix/animation/utils/VelocityMonitor$MoveRecord;
.super Ljava/lang/Object;
.source "VelocityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/utils/VelocityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveRecord"
.end annotation


# instance fields
.field public timeStamp:J

.field public values:[D


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

.method public synthetic constructor <init>(Lmiuix/animation/utils/VelocityMonitor$1;)V
    .registers 2

    invoke-direct {p0}, Lmiuix/animation/utils/VelocityMonitor$MoveRecord;-><init>()V

    return-void
.end method
