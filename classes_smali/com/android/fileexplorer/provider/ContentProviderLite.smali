.class public interface abstract Lcom/android/fileexplorer/provider/ContentProviderLite;
.super Ljava/lang/Object;
.source "ContentProviderLite.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract bulkInsert([Landroid/content/ContentValues;)I
.end method

.method public abstract delete(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getPkColumnName()Ljava/lang/String;
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public abstract insert(Landroid/content/ContentValues;)J
.end method

.method public abstract query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end method

.method public abstract update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
