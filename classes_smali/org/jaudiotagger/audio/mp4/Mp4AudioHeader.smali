.class public Lorg/jaudiotagger/audio/mp4/Mp4AudioHeader;
.super Lorg/jaudiotagger/audio/generic/GenericAudioHeader;
.source "Mp4AudioHeader.java"


# static fields
.field public static final FIELD_BRAND:Ljava/lang/String; = "BRAND"

.field public static final FIELD_KIND:Ljava/lang/String; = "KIND"

.field public static final FIELD_PROFILE:Ljava/lang/String; = "PROFILE"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrand()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "BRAND"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "KIND"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;

    return-object v0
.end method

.method public getProfile()Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;
    .registers 3

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "PROFILE"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;

    return-object v0
.end method

.method public setBrand(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "BRAND"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setKind(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$Kind;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "KIND"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setProfile(Lorg/jaudiotagger/audio/mp4/atom/Mp4EsdsBox$AudioProfile;)V
    .registers 4

    iget-object v0, p0, Lorg/jaudiotagger/audio/generic/GenericAudioHeader;->content:Ljava/util/HashMap;

    const-string v1, "PROFILE"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
