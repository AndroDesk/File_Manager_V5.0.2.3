.class public Lcom/android/fileexplorer/model/FileEntryEntity;
.super Lcom/android/fileexplorer/model/StorageInfo;
.source "FileEntryEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/model/FileEntryEntity$EntryViewOrder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/fileexplorer/model/StorageInfo;",
        "Ljava/lang/Comparable<",
        "Lcom/android/fileexplorer/model/FileEntryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field public availableSize:J

.field public fileSize:J

.field public icon:I

.field public index:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/model/StorageInfo;-><init>(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/android/fileexplorer/FileExplorerApplication;->getInstance()Lcom/android/fileexplorer/FileExplorerApplication;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f182df8

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/StorageInfo;->setDescription(Ljava/lang/String;)V

    const p1, 0x7f08025f

    iput p1, p0, Lcom/android/fileexplorer/model/FileEntryEntity;->icon:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/fileexplorer/model/FileEntryEntity;)I
    .registers 3

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    iget p1, p1, Lcom/android/fileexplorer/model/FileEntryEntity;->index:I

    sub-int/2addr v0, p1

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/fileexplorer/model/FileEntryEntity;

    invoke-virtual {p0, p1}, Lcom/android/fileexplorer/model/FileEntryEntity;->compareTo(Lcom/android/fileexplorer/model/FileEntryEntity;)I

    move-result p1

    return p1
.end method
