.class public interface abstract Lcom/android/fileexplorer/service/IQueryCallBack;
.super Ljava/lang/Object;
.source "IQueryCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fileexplorer/service/IQueryCallBack$Stub;,
        Lcom/android/fileexplorer/service/IQueryCallBack$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.fileexplorer.service.IQueryCallBack"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onQueryFinish()V
.end method

.method public abstract onQueryItem(Ljava/lang/String;I)Z
.end method

.method public abstract onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStartQuery(I)V
.end method
