.class interface abstract Lcom/android/fileexplorer/provider/LazyFileProvider$PathStrategy;
.super Ljava/lang/Object;
.source "LazyFileProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/provider/LazyFileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PathStrategy"
.end annotation


# virtual methods
.method public abstract getFileForUri(Landroid/net/Uri;)Ljava/io/File;
.end method

.method public abstract getUriForFile(Ljava/io/File;)Landroid/net/Uri;
.end method
