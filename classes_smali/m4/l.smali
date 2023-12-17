.class public final Lm4/l;
.super Lm4/m;
.source "Zip64ExtendedInfo.java"


# instance fields
.field public b:J

.field public c:J

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lm4/m;-><init>()V

    .line 4
    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lm4/l;->b:J

    .line 8
    iput-wide v0, p0, Lm4/l;->c:J

    .line 10
    iput-wide v0, p0, Lm4/l;->d:J

    .line 12
    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lm4/l;->e:I

    .line 15
    return-void
.end method
