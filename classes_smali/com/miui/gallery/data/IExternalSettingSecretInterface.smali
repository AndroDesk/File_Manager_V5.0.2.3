.class public interface abstract Lcom/miui/gallery/data/IExternalSettingSecretInterface;
.super Ljava/lang/Object;
.source "IExternalSettingSecretInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/data/IExternalSettingSecretInterface$Stub;,
        Lcom/miui/gallery/data/IExternalSettingSecretInterface$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.miui.gallery.data.IExternalSettingSecretInterface"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method


# virtual methods
.method public abstract onFinishSettingSecret([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract preSettingSecret([Ljava/lang/String;)V
.end method
