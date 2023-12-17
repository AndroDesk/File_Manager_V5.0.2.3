.class public interface abstract Lp1/f;
.super Ljava/lang/Object;
.source "KssDef.java"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    const-wide/32 v0, 0x400000

    .line 4
    invoke-static {v0, v1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 7
    move-result-wide v0

    .line 8
    sput-wide v0, Lp1/f;->a:J

    .line 10
    return-void
.end method
