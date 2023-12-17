.class public final Ls1/i;
.super Ljava/lang/Object;
.source "OAuthTimeUtils.java"


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/text/ParsePosition;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 14
    new-instance v1, Ljava/text/FieldPosition;

    .line 16
    invoke-direct {v1, v2}, Ljava/text/FieldPosition;-><init>(I)V

    .line 19
    const-string v1, "GMT+0800"

    .line 21
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 28
    return-void
.end method
