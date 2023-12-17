.class public final enum Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;
.super Ljava/lang/Enum;
.source "CloudNotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/widget/notificationbar/CloudNotificationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

.field public static final enum NO_FREE_NETWORK:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

.field public static final enum SPACE_FULL:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 1
    new-instance v0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 3
    const-string v1, "SPACE_FULL"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->SPACE_FULL:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 11
    new-instance v1, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 13
    const-string v3, "NO_FREE_NETWORK"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->NO_FREE_NETWORK:Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 21
    const/4 v3, 0x2

    .line 22
    new-array v3, v3, [Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 24
    aput-object v0, v3, v2

    .line 26
    aput-object v1, v3, v4

    .line 28
    sput-object v3, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->$VALUES:[Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 30
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;
    .registers 2

    .line 1
    const-class v0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;
    .registers 1

    .line 1
    sget-object v0, Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->$VALUES:[Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 3
    invoke-virtual {v0}, [Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/cloud/widget/notificationbar/CloudNotificationBar$HintType;

    .line 9
    return-object v0
.end method
