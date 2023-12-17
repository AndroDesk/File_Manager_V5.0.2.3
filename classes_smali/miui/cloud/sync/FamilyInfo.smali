.class public Lmiui/cloud/sync/FamilyInfo;
.super Ljava/lang/Object;
.source "FamilyInfo.java"


# static fields
.field public static final ROLE_NONE:Ljava/lang/String; = "None"

.field public static final ROLE_ORGANIZER:Ljava/lang/String; = "Organizer"

.field public static final ROLE_SHARER:Ljava/lang/String; = "Sharer"

.field public static final STATUS_NOT_ALLOW_SHARE:Ljava/lang/String; = "NotAllowShare"

.field public static final STATUS_NOT_SHARING:Ljava/lang/String; = "NotSharing"

.field public static final STATUS_SHARING:Ljava/lang/String; = "Sharing"


# instance fields
.field public final memberCount:I

.field public final role:Ljava/lang/String;

.field public final status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lmiui/cloud/sync/FamilyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lmiui/cloud/sync/FamilyInfo;->role:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lmiui/cloud/sync/FamilyInfo;->status:Ljava/lang/String;

    .line 5
    iput p3, p0, Lmiui/cloud/sync/FamilyInfo;->memberCount:I

    return-void
.end method


# virtual methods
.method public isFamilyOrganizerSharing()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/FamilyInfo;->role:Ljava/lang/String;

    .line 3
    const-string v1, "Organizer"

    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    iget-object v0, p0, Lmiui/cloud/sync/FamilyInfo;->status:Ljava/lang/String;

    .line 13
    const-string v1, "Sharing"

    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method

.method public isFamilySharerSharing()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lmiui/cloud/sync/FamilyInfo;->role:Ljava/lang/String;

    .line 3
    const-string v1, "Sharer"

    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_16

    .line 11
    iget-object v0, p0, Lmiui/cloud/sync/FamilyInfo;->status:Ljava/lang/String;

    .line 13
    const-string v1, "Sharing"

    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_16

    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_17

    .line 23
    :cond_16
    const/4 v0, 0x0

    .line 24
    :goto_17
    return v0
.end method
