.class public interface abstract Lp1/f;
.super Ljava/lang/Object;
.source "KssDef.java"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0x400000

    invoke-static {v0, v1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lp1/f;->a:J

    return-void
.end method
