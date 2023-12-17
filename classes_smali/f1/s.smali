.class public final Lf1/s;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    sput-boolean v1, Lf1/s;->a:Z

    sput-boolean v1, Lf1/s;->b:Z

    const/16 v2, 0x1c

    if-lt v0, v2, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    sput-boolean v1, Lf1/s;->c:Z

    return-void
.end method
