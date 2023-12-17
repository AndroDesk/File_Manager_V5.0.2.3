.class public Lcom/google/android/gms/common/sqlite/CursorWrapper;
.super Landroid/database/CursorWrapper;

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private zzez:Landroid/database/AbstractWindowedCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    :goto_4
    const/16 v1, 0xa

    .line 7
    if-ge v0, v1, :cond_15

    .line 9
    instance-of v1, p1, Landroid/database/CursorWrapper;

    .line 11
    if-eqz v1, :cond_15

    .line 13
    check-cast p1, Landroid/database/CursorWrapper;

    .line 15
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    .line 18
    move-result-object p1

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_4

    .line 22
    :cond_15
    instance-of v0, p1, Landroid/database/AbstractWindowedCursor;

    .line 24
    if-nez v0, :cond_39

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string v1, "Unknown type: "

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_30

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    goto :goto_35

    .line 49
    :cond_30
    new-instance p1, Ljava/lang/String;

    .line 51
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 54
    :goto_35
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 57
    throw v0

    .line 58
    :cond_39
    check-cast p1, Landroid/database/AbstractWindowedCursor;

    .line 60
    iput-object p1, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Landroid/database/AbstractWindowedCursor;

    .line 62
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Landroid/database/AbstractWindowedCursor;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/database/AbstractCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 6
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Landroid/database/AbstractWindowedCursor;

    .line 3
    invoke-virtual {v0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public synthetic getWrappedCursor()Landroid/database/Cursor;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Landroid/database/AbstractWindowedCursor;

    .line 3
    return-object v0
.end method

.method public onMove(II)Z
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Landroid/database/AbstractWindowedCursor;

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/database/AbstractCursor;->onMove(II)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .registers 3
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/sqlite/CursorWrapper;->zzez:Landroid/database/AbstractWindowedCursor;

    .line 3
    invoke-virtual {v0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 6
    return-void
.end method
