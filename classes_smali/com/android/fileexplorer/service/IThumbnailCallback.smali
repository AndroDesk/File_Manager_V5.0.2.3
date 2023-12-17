.class public interface abstract Lcom/android/fileexplorer/service/IThumbnailCallback;
.super Ljava/lang/Object;
.source "IThumbnailCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/IThumbnailCallback$Stub;,
        Lcom/android/fileexplorer/service/IThumbnailCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.fileexplorer.service.IThumbnailCallback"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onReady(Ljava/lang/String;)V
.end method
