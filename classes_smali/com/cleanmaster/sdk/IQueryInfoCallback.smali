.class public interface abstract Lcom/cleanmaster/sdk/IQueryInfoCallback;
.super Ljava/lang/Object;
.source "IQueryInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cleanmaster/sdk/IQueryInfoCallback$Stub;,
        Lcom/cleanmaster/sdk/IQueryInfoCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.cleanmaster.sdk.IQueryInfoCallback"


# virtual methods
.method public abstract onQueryFinish()V
.end method

.method public abstract onQueryItem(Ljava/lang/String;I)Z
.end method

.method public abstract onQueryItemEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStartQuery(I)V
.end method
