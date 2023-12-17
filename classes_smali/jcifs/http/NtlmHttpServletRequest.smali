.class Ljcifs/http/NtlmHttpServletRequest;
.super Ljavax/servlet/http/HttpServletRequestWrapper;
.source "NtlmHttpServletRequest.java"


# instance fields
.field public principal:Ljava/security/Principal;


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    .line 4
    iput-object p2, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    .line 6
    return-void
.end method


# virtual methods
.method public getAuthType()Ljava/lang/String;
    .registers 2

    const-string v0, "NTLM"

    return-object v0
.end method

.method public getRemoteUser()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    .line 3
    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .registers 2

    .line 1
    iget-object v0, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    .line 3
    return-object v0
.end method
