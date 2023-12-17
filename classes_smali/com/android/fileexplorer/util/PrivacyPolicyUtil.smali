.class public Lcom/android/fileexplorer/util/PrivacyPolicyUtil;
.super Ljava/lang/Object;
.source "PrivacyPolicyUtil.java"


# static fields
.field private static privacyInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/miui/privacypolicy/PrivacyManager;->requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/fileexplorer/util/PrivacyPolicyUtil;->privacyInfo:Ljava/lang/String;

    return-object p0
.end method
