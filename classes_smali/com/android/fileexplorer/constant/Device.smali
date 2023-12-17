.class public Lcom/android/fileexplorer/constant/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final BUILD_DEVICE:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 3
    sput-object v0, Lcom/android/fileexplorer/constant/Device;->BUILD_DEVICE:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
