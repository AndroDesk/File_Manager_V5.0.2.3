.class public final Lm4/l;
.super Lm4/m;
.source "Zip64ExtendedInfo.java"


# instance fields
.field public b:J

.field public c:J

.field public d:J

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lm4/m;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm4/l;->b:J

    iput-wide v0, p0, Lm4/l;->c:J

    iput-wide v0, p0, Lm4/l;->d:J

    const/4 v0, -0x1

    iput v0, p0, Lm4/l;->e:I

    return-void
.end method
