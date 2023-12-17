.class public Lcom/android/fileexplorer/mtp/CursorHelper;
.super Ljava/lang/Object;
.source "CursorHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCursorInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_c

    .line 8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    .line 11
    move-result p0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return p0
.end method

.method public static getCursorLong(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 5

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    const-wide/16 v0, -0x1

    .line 7
    const/4 v2, -0x1

    .line 8
    if-ne p1, v2, :cond_a

    .line 10
    return-wide v0

    .line 11
    :cond_a
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object p0

    .line 15
    if-nez p0, :cond_11

    .line 17
    return-wide v0

    .line 18
    :cond_11
    :try_start_11
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 21
    move-result-wide p0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_16

    .line 22
    return-wide p0

    .line 23
    :catch_16
    return-wide v0
.end method

.method public static getCursorString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-eq p1, v0, :cond_c

    .line 8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    goto :goto_d

    .line 13
    :cond_c
    const/4 p0, 0x0

    .line 14
    :goto_d
    return-object p0
.end method
