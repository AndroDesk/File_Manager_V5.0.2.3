.class public Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;
.super Ljava/lang/Object;
.source "MiCloudRichMediaSupportedFileType.java"


# static fields
.field public static final ICO:Ljava/lang/String; = "ico"

.field public static final MIXIN:Ljava/lang/String; = "mixin"

.field public static final MIXIN2:Ljava/lang/String; = "mixin2"

.field public static final MMS:Ljava/lang/String; = "mms"

.field public static final NOTE_ENT:Ljava/lang/String; = "note_ent"

.field public static final NOTE_IMAGE:Ljava/lang/String; = "note_img"

.field public static final NOTE_REC:Ljava/lang/String; = "note_rec"

.field public static final REC:Ljava/lang/String; = "rec"

.field private static final sSupportedFileTypeSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->sSupportedFileTypeSet:Ljava/util/HashSet;

    const-string v1, "mms"

    const-string v2, "ico"

    const-string v3, "rec"

    const-string v4, "mixin"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "note_img"

    const-string v2, "note_rec"

    const-string v3, "note_ent"

    const-string v4, "mixin2"

    invoke-static {v0, v1, v2, v3, v4}, Lf0/e;->n(Ljava/util/HashSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMiXin2(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "mixin2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isSupported(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/xiaomi/micloudsdk/micloudrichmedia/MiCloudRichMediaSupportedFileType;->sSupportedFileTypeSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
