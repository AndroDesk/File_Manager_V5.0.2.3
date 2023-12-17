.class public final Lcom/bumptech/glide/util/pool/GlideTrace;
.super Ljava/lang/Object;
.source "GlideTrace.java"


# static fields
.field private static final MAX_LENGTH:I = 0x7f

.field private static final TRACING_ENABLED:Z = false


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public static beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    return-void
.end method

.method public static endSection()V
    .registers 0

    return-void
.end method

.method private static truncateTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x7f

    .line 7
    if-le v0, v1, :cond_f

    .line 9
    const/4 v0, 0x0

    .line 10
    const/16 v1, 0x7e

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    :cond_f
    return-object p0
.end method
