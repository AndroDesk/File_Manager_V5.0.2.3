.class Ljcifs/http/NtlmHttpServletRequest;
.super Ljavax/servlet/http/HttpServletRequestWrapper;
.source "NtlmHttpServletRequest.java"


# instance fields
.field public principal:Ljava/security/Principal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljava/security/Principal;)V
    .registers 3

    invoke-direct {p0, p1}, Ljavax/servlet/http/HttpServletRequestWrapper;-><init>(Ljavax/servlet/http/HttpServletRequest;)V

    iput-object p2, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

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

    iget-object v0, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPrincipal()Ljava/security/Principal;
    .registers 2

    iget-object v0, p0, Ljcifs/http/NtlmHttpServletRequest;->principal:Ljava/security/Principal;

    return-object v0
.end method
