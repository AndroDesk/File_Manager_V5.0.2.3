.class public interface abstract Lmiui/app/IFreeformCallback;
.super Ljava/lang/Object;
.source "IFreeformCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/IFreeformCallback$Stub;,
        Lmiui/app/IFreeformCallback$Default;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract dispatchFreeFormStackModeChanged(ILmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;)V
.end method
