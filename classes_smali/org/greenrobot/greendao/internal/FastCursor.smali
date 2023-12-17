.class public final Lorg/greenrobot/greendao/internal/FastCursor;
.super Ljava/lang/Object;
.source "FastCursor.java"

# interfaces
.implements Landroid/database/Cursor;


# instance fields
.field private final count:I

.field private position:I

.field private final window:Landroid/database/CursorWindow;


# direct methods
.method public constructor <init>(Landroid/database/CursorWindow;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 6
    invoke-virtual {p1}, Landroid/database/CursorWindow;->getNumRows()I

    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    .line 12
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public deactivate()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public getBlob(I)[B
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getBlob(II)[B

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getColumnCount()I
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDouble(I)D
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public getFloat(I)F
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getFloat(II)F

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getInt(I)I
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getInt(II)I

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getLong(I)J
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getLong(II)J

    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()I
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 3
    return v0
.end method

.method public getShort(I)S
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getShort(II)S

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getType(I)I
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public isAfterLast()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public isBeforeFirst()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public isClosed()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public isFirst()Z
    .registers 2

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_7

    .line 7
    :cond_6
    const/4 v0, 0x0

    .line 8
    :goto_7
    return v0
.end method

.method public isLast()Z
    .registers 4

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    .line 5
    const/4 v2, 0x1

    .line 6
    sub-int/2addr v1, v2

    .line 7
    if-ne v0, v1, :cond_9

    .line 9
    goto :goto_a

    .line 10
    :cond_9
    const/4 v2, 0x0

    .line 11
    :goto_a
    return v2
.end method

.method public isNull(I)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->window:Landroid/database/CursorWindow;

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->isNull(II)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public move(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 3
    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Lorg/greenrobot/greendao/internal/FastCursor;->moveToPosition(I)Z

    .line 7
    move-result p1

    .line 8
    return p1
.end method

.method public moveToFirst()Z
    .registers 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 4
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    .line 6
    if-lez v1, :cond_8

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_8
    return v0
.end method

.method public moveToLast()Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    .line 3
    if-lez v0, :cond_9

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    iput v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 9
    return v1

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public moveToNext()Z
    .registers 4

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 3
    iget v1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    .line 5
    const/4 v2, 0x1

    .line 6
    sub-int/2addr v1, v2

    .line 7
    if-ge v0, v1, :cond_c

    .line 9
    add-int/2addr v0, v2

    .line 10
    iput v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 12
    return v2

    .line 13
    :cond_c
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public moveToPosition(I)Z
    .registers 3

    .line 1
    if-ltz p1, :cond_a

    .line 3
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->count:I

    .line 5
    if-ge p1, v0, :cond_a

    .line 7
    iput p1, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_a
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public moveToPrevious()Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 3
    if-lez v0, :cond_9

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    iput v0, p0, Lorg/greenrobot/greendao/internal/FastCursor;->position:I

    .line 9
    return v1

    .line 10
    :cond_9
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public requery()Z
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 3

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 2

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw p1
.end method
