.class public final enum Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;
.super Ljava/lang/Enum;
.source "AbsNotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/widget/notificationbar/AbsNotificationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BarType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

.field public static final enum NORMAL:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

.field public static final enum WARNING:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;->NORMAL:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    new-instance v1, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    const-string v3, "WARNING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;->WARNING:Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;->$VALUES:[Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;
    .registers 2

    const-class v0, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    return-object p0
.end method

.method public static values()[Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;
    .registers 1

    sget-object v0, Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;->$VALUES:[Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    invoke-virtual {v0}, [Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/cloud/widget/notificationbar/AbsNotificationBar$BarType;

    return-object v0
.end method
