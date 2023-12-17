.class public Ljcifs/dcerpc/DcerpcBinding;
.super Ljava/lang/Object;
.source "DcerpcBinding.java"


# static fields
.field private static INTERFACES:Ljava/util/HashMap;


# instance fields
.field public endpoint:Ljava/lang/String;

.field public major:I

.field public minor:I

.field public options:Ljava/util/HashMap;

.field public proto:Ljava/lang/String;

.field public server:Ljava/lang/String;

.field public uuid:Ljcifs/dcerpc/UUID;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    invoke-static {}, Ljcifs/dcerpc/msrpc/srvsvc;->getSyntax()Ljava/lang/String;

    move-result-object v1

    const-string v2, "srvsvc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    invoke-static {}, Ljcifs/dcerpc/msrpc/lsarpc;->getSyntax()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lsarpc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    invoke-static {}, Ljcifs/dcerpc/msrpc/samr;->getSyntax()Ljava/lang/String;

    move-result-object v1

    const-string v2, "samr"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    invoke-static {}, Ljcifs/dcerpc/msrpc/netdfs;->getSyntax()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netdfs"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    iput-object p2, p0, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    return-void
.end method

.method public static addInterface(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOption(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    return-object p1

    :cond_b
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const-string p2, "\\pipe\\"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5c

    sget-object p1, Ljcifs/dcerpc/DcerpcBinding;->INTERFACES:Ljava/util/HashMap;

    iget-object p2, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_5c

    const/16 p2, 0x3a

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/16 v0, 0x2e

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    new-instance v2, Ljcifs/dcerpc/UUID;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Ljcifs/dcerpc/UUID;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ljcifs/dcerpc/DcerpcBinding;->uuid:Ljcifs/dcerpc/UUID;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Ljcifs/dcerpc/DcerpcBinding;->major:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Ljcifs/dcerpc/DcerpcBinding;->minor:I

    return-void

    :cond_5c
    new-instance p1, Ljcifs/dcerpc/DcerpcException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Bad endpoint: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljcifs/dcerpc/DcerpcException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-nez v0, :cond_7d

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    :cond_7d
    iget-object v0, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->proto:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->server:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_5e

    :cond_36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Ljcifs/dcerpc/DcerpcBinding;->options:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_5e
    :goto_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
