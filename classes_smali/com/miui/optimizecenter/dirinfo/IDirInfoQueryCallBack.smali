.class public interface abstract Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack;
.super Ljava/lang/Object;
.source "IDirInfoQueryCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack$Stub;,
        Lcom/miui/optimizecenter/dirinfo/IDirInfoQueryCallBack$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.miui.optimizecenter.dirinfo.IDirInfoQueryCallBack"


# virtual methods
.method public abstract onQueryFinish()V
.end method

.method public abstract onQueryItem(Ljava/lang/String;I)Z
.end method

.method public abstract onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStartQuery(I)V
.end method
