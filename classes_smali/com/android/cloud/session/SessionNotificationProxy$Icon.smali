.class Lcom/android/cloud/session/SessionNotificationProxy$Icon;
.super Ljava/lang/Object;
.source "SessionNotificationProxy.java"

# interfaces
.implements Lcom/micloud/midrive/notification/ContentIcon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/session/SessionNotificationProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Icon"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/session/SessionNotificationProxy$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/cloud/session/SessionNotificationProxy$Icon;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    const v0, 0x7f0802a7

    return v0
.end method
