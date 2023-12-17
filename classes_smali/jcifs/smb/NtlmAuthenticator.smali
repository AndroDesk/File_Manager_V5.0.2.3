.class public abstract Ljcifs/smb/NtlmAuthenticator;
.super Ljava/lang/Object;
.source "NtlmAuthenticator.java"


# static fields
.field private static auth:Ljcifs/smb/NtlmAuthenticator;


# instance fields
.field private sae:Ljcifs/smb/SmbAuthException;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestNtlmPasswordAuthentication(Ljava/lang/String;Ljcifs/smb/SmbAuthException;)Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 4

    .line 1
    sget-object v0, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;

    .line 3
    if-nez v0, :cond_6

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_6
    monitor-enter v0

    .line 8
    :try_start_7
    sget-object v1, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;

    .line 10
    iput-object p0, v1, Ljcifs/smb/NtlmAuthenticator;->url:Ljava/lang/String;

    .line 12
    iput-object p1, v1, Ljcifs/smb/NtlmAuthenticator;->sae:Ljcifs/smb/SmbAuthException;

    .line 14
    invoke-virtual {v1}, Ljcifs/smb/NtlmAuthenticator;->getNtlmPasswordAuthentication()Ljcifs/smb/NtlmPasswordAuthentication;

    .line 17
    move-result-object p0

    .line 18
    monitor-exit v0

    .line 19
    return-object p0

    .line 20
    :catchall_13
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    .line 22
    throw p0
.end method

.method private reset()V
    .registers 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljcifs/smb/NtlmAuthenticator;->url:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Ljcifs/smb/NtlmAuthenticator;->sae:Ljcifs/smb/SmbAuthException;

    .line 6
    return-void
.end method

.method public static declared-synchronized setDefault(Ljcifs/smb/NtlmAuthenticator;)V
    .registers 3

    .line 1
    const-class v0, Ljcifs/smb/NtlmAuthenticator;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    sget-object v1, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_d

    .line 6
    if-eqz v1, :cond_9

    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_9
    :try_start_9
    sput-object p0, Ljcifs/smb/NtlmAuthenticator;->auth:Ljcifs/smb/NtlmAuthenticator;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_d
    move-exception p0

    .line 15
    monitor-exit v0

    .line 16
    throw p0
.end method


# virtual methods
.method public getNtlmPasswordAuthentication()Ljcifs/smb/NtlmPasswordAuthentication;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRequestingException()Ljcifs/smb/SmbAuthException;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmAuthenticator;->sae:Ljcifs/smb/SmbAuthException;

    .line 3
    return-object v0
.end method

.method public final getRequestingURL()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/smb/NtlmAuthenticator;->url:Ljava/lang/String;

    .line 3
    return-object v0
.end method
