.class public interface abstract Lcom/android/fileexplorer/service/IRecentManager;
.super Ljava/lang/Object;
.source "IRecentManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/IRecentManager$_Parcel;,
        Lcom/android/fileexplorer/service/IRecentManager$Stub;,
        Lcom/android/fileexplorer/service/IRecentManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.fileexplorer.service.IRecentManager"


# virtual methods
.method public abstract getThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.end method

.method public abstract init(Lcom/android/fileexplorer/service/IInitCallback;)V
.end method

.method public abstract refresh()V
.end method
