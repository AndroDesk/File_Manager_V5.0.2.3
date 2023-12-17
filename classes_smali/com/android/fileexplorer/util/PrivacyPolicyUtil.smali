.class public Lcom/android/fileexplorer/util/PrivacyPolicyUtil;
.super Ljava/lang/Object;
.source "PrivacyPolicyUtil.java"


# static fields
.field private static privacyInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-static {p0, p1, p2}, Lcom/miui/privacypolicy/PrivacyManager;->requestPrivacyUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    sput-object p0, Lcom/android/fileexplorer/util/PrivacyPolicyUtil;->privacyInfo:Ljava/lang/String;

    .line 7
    return-object p0
.end method
