.class public final Lm4/k;
.super Lm4/m;
.source "Zip64EndOfCentralDirectoryRecord.java"


# instance fields
.field public b:J

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:J

.field public h:J

.field public i:J

.field public j:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lm4/m;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lm4/k;->j:J

    return-void
.end method
