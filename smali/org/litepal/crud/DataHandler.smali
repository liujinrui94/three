.class abstract Lorg/litepal/crud/DataHandler;
.super Lorg/litepal/LitePalBase;
.source "DataHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DataHandler"


# instance fields
.field private fkInCurrentModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fkInOtherModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private tempEmptyModel:Lorg/litepal/crud/DataSupport;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/litepal/LitePalBase;-><init>()V

    return-void
.end method

.method private analyzeAssociations(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1116
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 1117
    .local v1, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1118
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    .line 1122
    :goto_0
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    if-nez v2, :cond_2

    .line 1123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    .line 1127
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1139
    return-void

    .line 1120
    :cond_1
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1125
    :cond_2
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1127
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1128
    .local v0, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 1129
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1130
    :cond_4
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1131
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1133
    :cond_5
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1135
    :cond_6
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1136
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1049
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1050
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, "typeName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    .local v0, "methodName":Ljava/lang/String;
    const-string v2, "getBoolean"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1056
    const-string v0, "getInt"

    .line 1064
    :cond_0
    :goto_1
    return-object v0

    .line 1052
    .end local v0    # "methodName":Ljava/lang/String;
    .end local v1    # "typeName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "typeName":Ljava/lang/String;
    goto :goto_0

    .line 1057
    .restart local v0    # "methodName":Ljava/lang/String;
    :cond_2
    const-string v2, "getChar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "getCharacter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1058
    :cond_3
    const-string v0, "getString"

    .line 1059
    goto :goto_1

    :cond_4
    const-string v2, "getDate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1060
    const-string v0, "getLong"

    .line 1061
    goto :goto_1

    :cond_5
    const-string v2, "getInteger"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1062
    const-string v0, "getInt"

    goto :goto_1
.end method

.method private genGetColumnMethod(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 1035
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCustomizedColumns([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .locals 8
    .param p1, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "foreignKeyAssociations":Ljava/util/List;, "Ljava/util/List<Lorg/litepal/crud/model/AssociationsInfo;>;"
    const/4 v7, 0x0

    .line 1080
    if-eqz p1, :cond_5

    .line 1081
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1082
    array-length v5, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-array v4, v5, [Ljava/lang/String;

    .line 1083
    .local v4, "tempColumns":[Ljava/lang/String;
    array-length v5, p1

    invoke-static {p1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1084
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 1090
    move-object p1, v4

    .line 1092
    .end local v3    # "i":I
    .end local v4    # "tempColumns":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v5, p1

    if-lt v3, v5, :cond_2

    .line 1101
    array-length v5, p1

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    .line 1102
    .local v2, "customizedColumns":[Ljava/lang/String;
    array-length v5, p1

    invoke-static {p1, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1103
    array-length v5, p1

    const-string v6, "id"

    invoke-static {v6}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1106
    .end local v2    # "customizedColumns":[Ljava/lang/String;
    .end local v3    # "i":I
    :goto_2
    return-object v2

    .line 1086
    .restart local v3    # "i":I
    .restart local v4    # "tempColumns":[Ljava/lang/String;
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1087
    invoke-virtual {v5}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v5

    .line 1086
    invoke-static {v5}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "associatedTable":Ljava/lang/String;
    array-length v5, p1

    add-int/2addr v5, v3

    invoke-virtual {p0, v0}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1084
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1093
    .end local v0    # "associatedTable":Ljava/lang/String;
    .end local v4    # "tempColumns":[Ljava/lang/String;
    :cond_2
    aget-object v1, p1, v3

    .line 1094
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1095
    const-string v5, "_id"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1096
    const-string v5, "id"

    invoke-static {v5}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    :cond_3
    move-object v2, p1

    .line 1098
    goto :goto_2

    .line 1092
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1106
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getInitParamValue(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 831
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "paramTypeName":Ljava/lang/String;
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 859
    :goto_0
    return-object v1

    .line 835
    :cond_1
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "java.lang.Float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 836
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 838
    :cond_3
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "java.lang.Double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 839
    :cond_4
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 841
    :cond_5
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "java.lang.Integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 842
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 844
    :cond_7
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "java.lang.Long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 845
    :cond_8
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 847
    :cond_9
    const-string v1, "short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "java.lang.Short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 848
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 850
    :cond_b
    const-string v1, "char"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "java.lang.Character"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 851
    :cond_c
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto/16 :goto_0

    .line 853
    :cond_d
    const-string v1, "java.lang.String"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 854
    const-string v1, ""

    goto/16 :goto_0

    .line 856
    :cond_e
    if-ne p1, p2, :cond_f

    .line 857
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 859
    :cond_f
    invoke-virtual {p0, p2}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getObjectType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 796
    .local p1, "primitiveType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_6

    .line 797
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 798
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "basicTypeName":Ljava/lang/String;
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 800
    const-class v1, Ljava/lang/Integer;

    .line 816
    .end local v0    # "basicTypeName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 801
    .restart local v0    # "basicTypeName":Ljava/lang/String;
    :cond_0
    const-string v1, "short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 802
    const-class v1, Ljava/lang/Short;

    goto :goto_0

    .line 803
    :cond_1
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 804
    const-class v1, Ljava/lang/Long;

    goto :goto_0

    .line 805
    :cond_2
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 806
    const-class v1, Ljava/lang/Float;

    goto :goto_0

    .line 807
    :cond_3
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 808
    const-class v1, Ljava/lang/Double;

    goto :goto_0

    .line 809
    :cond_4
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 810
    const-class v1, Ljava/lang/Boolean;

    goto :goto_0

    .line 811
    :cond_5
    const-string v1, "char"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 812
    const-class v1, Ljava/lang/Character;

    goto :goto_0

    .line 816
    .end local v0    # "basicTypeName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getParameterTypes(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldValue"    # Ljava/lang/Object;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 770
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isCharType(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    .line 772
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    .line 782
    .local v0, "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v0

    .line 774
    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/litepal/crud/DataHandler;->getObjectType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    .line 776
    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    goto :goto_0

    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    :cond_1
    const-string v1, "java.util.Date"

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 777
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/Long;

    aput-object v1, v0, v3

    .line 778
    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    goto :goto_0

    .line 779
    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    :cond_2
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    goto :goto_0
.end method

.method private isCharType(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 870
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, "type":Ljava/lang/String;
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Character"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFieldWithDefaultValue(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z
    .locals 6
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 969
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->getEmptyModel(Lorg/litepal/crud/DataSupport;)Lorg/litepal/crud/DataSupport;

    move-result-object v2

    .line 970
    .local v2, "emptyModel":Lorg/litepal/crud/DataSupport;
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 971
    .local v4, "realReturn":Ljava/lang/Object;
    invoke-virtual {p0, v2, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 972
    .local v1, "defaultReturn":Ljava/lang/Object;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 973
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 974
    .local v3, "realFieldValue":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "defaultFieldValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 977
    .end local v0    # "defaultFieldValue":Ljava/lang/String;
    .end local v3    # "realFieldValue":Ljava/lang/String;
    :goto_0
    return v5

    :cond_0
    if-ne v4, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 885
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 886
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "boolean"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    const/4 v1, 0x1

    .line 889
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSaving()Z
    .locals 2

    .prologue
    .line 944
    const-class v0, Lorg/litepal/crud/SaveHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUpdating()Z
    .locals 2

    .prologue
    .line 934
    const-class v0, Lorg/litepal/crud/UpdateHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeGetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 989
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, "fieldName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 991
    const-string v2, "^is[A-Z]{1}.*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 994
    :cond_0
    const-string v1, "is"

    .line 998
    .local v1, "getterMethodPrefix":Ljava/lang/String;
    :goto_0
    const-string v2, "^[a-z]{1}[A-Z]{1}.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1001
    :goto_1
    return-object v2

    .line 996
    .end local v1    # "getterMethodPrefix":Ljava/lang/String;
    :cond_1
    const-string v1, "get"

    .restart local v1    # "getterMethodPrefix":Ljava/lang/String;
    goto :goto_0

    .line 1001
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private makeSetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 1014
    const-string v1, "set"

    .line 1015
    .local v1, "setterMethodPrefix":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^is[A-Z]{1}.*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, "setterMethodName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1017
    .end local v0    # "setterMethodName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[a-z]{1}[A-Z]{1}.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .restart local v0    # "setterMethodName":Ljava/lang/String;
    goto :goto_0

    .line 1020
    .end local v0    # "setterMethodName":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "setterMethodName":Ljava/lang/String;
    goto :goto_0
.end method

.method private putFieldsValueDependsOnSaveOrUpdate(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 913
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;->isUpdating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->isFieldWithDefaultValue(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 915
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/DataHandler;->putContentValues(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;->isSaving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 920
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 921
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/DataHandler;->putContentValues(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private setAssociatedModel(Lorg/litepal/crud/DataSupport;)V
    .locals 27
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 1149
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    if-nez v4, :cond_1

    .line 1205
    :cond_0
    return-void

    .line 1152
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_2
    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1153
    .local v19, "info":Lorg/litepal/crud/model/AssociationsInfo;
    const/16 v16, 0x0

    .line 1154
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {v19 .. v19}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v13

    .line 1155
    .local v13, "associatedClassName":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7

    const/16 v21, 0x1

    .line 1157
    .local v21, "isM2M":Z
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/litepal/crud/DataHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v24

    .line 1158
    .local v24, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-eqz v21, :cond_8

    .line 1159
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v25

    .line 1161
    .local v25, "tableName":Ljava/lang/String;
    invoke-static {v13}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1162
    .local v14, "associatedTableName":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-static {v0, v14}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1164
    .local v20, "intermediateTableName":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1165
    .local v23, "sql":Ljava/lang/StringBuilder;
    const-string v4, "select * from "

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1166
    const-string v5, " a inner join "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1167
    const-string v5, " b on a.id = b."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1168
    const-string v5, " where b."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_id = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1170
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lorg/litepal/crud/DataSupport;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1181
    .end local v20    # "intermediateTableName":Ljava/lang/String;
    .end local v23    # "sql":Ljava/lang/StringBuilder;
    .end local v25    # "tableName":Ljava/lang/String;
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1183
    :cond_3
    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/litepal/crud/DataSupport;

    .line 1185
    .local v22, "modelInstance":Lorg/litepal/crud/DataSupport;
    const-string v4, "id"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1184
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4, v5}, Lorg/litepal/crud/DataHandler;->giveBaseObjIdValue(Lorg/litepal/crud/DataSupport;J)V

    .line 1186
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/litepal/crud/DataHandler;->setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;)V

    .line 1187
    invoke-virtual/range {v19 .. v19}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    if-eqz v21, :cond_9

    .line 1189
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1188
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    .line 1190
    .local v15, "collection":Ljava/util/Collection;
    move-object/from16 v0, v22

    invoke-interface {v15, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1195
    .end local v15    # "collection":Ljava/util/Collection;
    :cond_5
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    .line 1200
    .end local v22    # "modelInstance":Lorg/litepal/crud/DataSupport;
    :cond_6
    if-eqz v16, :cond_2

    .line 1201
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1155
    .end local v14    # "associatedTableName":Ljava/lang/String;
    .end local v21    # "isM2M":Z
    .end local v24    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1173
    .restart local v21    # "isM2M":Z
    .restart local v24    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_8
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lorg/litepal/crud/model/AssociationsInfo;->getSelfClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1172
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1175
    .local v18, "foreignKeyColumn":Ljava/lang/String;
    invoke-static {v13}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1176
    .restart local v14    # "associatedTableName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v14}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1177
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "=?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1178
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1179
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1176
    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    goto/16 :goto_2

    .line 1191
    .end local v18    # "foreignKeyColumn":Ljava/lang/String;
    .restart local v22    # "modelInstance":Lorg/litepal/crud/DataSupport;
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 1193
    invoke-virtual/range {v19 .. v19}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1192
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v4, v2}, Lorg/litepal/crud/DataHandler;->putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1197
    .end local v14    # "associatedTableName":Ljava/lang/String;
    .end local v22    # "modelInstance":Lorg/litepal/crud/DataSupport;
    .end local v24    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :catch_0
    move-exception v17

    .line 1198
    .local v17, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1199
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 1200
    if-eqz v16, :cond_a

    .line 1201
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1203
    :cond_a
    throw v4
.end method


# virtual methods
.method protected analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V
    .locals 5
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    return-void

    .line 326
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/model/AssociationsInfo;

    .line 327
    .local v0, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 328
    new-instance v3, Lorg/litepal/crud/Many2OneAnalyzer;

    invoke-direct {v3}, Lorg/litepal/crud/Many2OneAnalyzer;-><init>()V

    invoke-virtual {v3, p1, v0}, Lorg/litepal/crud/Many2OneAnalyzer;->analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    .end local v0    # "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 329
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 330
    new-instance v3, Lorg/litepal/crud/One2OneAnalyzer;

    invoke-direct {v3}, Lorg/litepal/crud/One2OneAnalyzer;-><init>()V

    invoke-virtual {v3, p1, v0}, Lorg/litepal/crud/One2OneAnalyzer;->analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0

    .line 331
    :cond_3
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 332
    new-instance v3, Lorg/litepal/crud/Many2ManyAnalyzer;

    invoke-direct {v3}, Lorg/litepal/crud/Many2ManyAnalyzer;-><init>()V

    invoke-virtual {v3, p1, v0}, Lorg/litepal/crud/Many2ManyAnalyzer;->analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 597
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->findBestSuitConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 598
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/DataHandler;->getConstructorParams(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 599
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 600
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 601
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected findBestSuitConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 615
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 616
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 617
    .local v4, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/reflect/Constructor<*>;>;"
    const v5, 0x7fffffff

    .line 618
    .local v5, "minKey":I
    array-length v11, v2

    move v10, v9

    :goto_0
    if-lt v10, v11, :cond_1

    .line 633
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 634
    .local v0, "bestSuitConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v0, :cond_0

    .line 635
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 637
    :cond_0
    return-object v0

    .line 618
    .end local v0    # "bestSuitConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    aget-object v1, v2, v10

    .line 619
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v3, v8

    .line 620
    .local v3, "key":I
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 621
    .local v7, "types":[Ljava/lang/Class;
    array-length v12, v7

    move v8, v9

    :goto_1
    if-lt v8, v12, :cond_4

    .line 626
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 627
    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 629
    :cond_2
    if-ge v3, v5, :cond_3

    .line 630
    move v5, v3

    .line 618
    :cond_3
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_0

    .line 621
    :cond_4
    aget-object v6, v7, v8

    .line 622
    .local v6, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v6, p1, :cond_5

    .line 623
    add-int/lit16 v3, v3, 0x2710

    .line 621
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method protected findDataSupportClass(Lorg/litepal/crud/DataSupport;)Ljava/lang/Class;
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 530
    const/4 v0, 0x0

    .line 532
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 533
    if-eqz v0, :cond_1

    const-class v1, Lorg/litepal/crud/DataSupport;

    if-ne v1, v0, :cond_0

    .line 537
    :cond_1
    if-nez v0, :cond_2

    .line 538
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 539
    const-string v3, " should be inherited from DataSupport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-direct {v1, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 541
    :cond_2
    return-object v0
.end method

.method protected getAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Lorg/litepal/crud/DataSupport;
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 358
    .line 359
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 358
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/DataSupport;

    return-object v0
.end method

.method protected getAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/DataSupport;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 382
    .line 383
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 382
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method protected getConstructorParams(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 653
    .local v1, "paramTypes":[Ljava/lang/Class;
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 654
    .local v2, "params":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 657
    return-object v2

    .line 655
    :cond_0
    aget-object v3, v1, v0

    invoke-direct {p0, p1, v3}, Lorg/litepal/crud/DataHandler;->getInitParamValue(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getEmptyModel(Lorg/litepal/crud/DataSupport;)Lorg/litepal/crud/DataSupport;
    .locals 6
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 396
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/DataSupport;

    if-eqz v3, :cond_0

    .line 397
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/DataSupport;

    .line 404
    :goto_0
    return-object v3

    .line 399
    :cond_0
    const/4 v0, 0x0

    .line 401
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 403
    .local v2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/litepal/crud/DataSupport;

    iput-object v3, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/DataSupport;

    .line 404
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/DataSupport;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 405
    .end local v2    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not find a class named "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 406
    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 408
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lorg/litepal/exceptions/DataSupportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " needs a default constructor."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "isEager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    if-eqz p2, :cond_0

    .line 748
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->analyzeAssociations(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    .line 751
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIntermediateTableName(Lorg/litepal/crud/DataSupport;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedTableName"    # Ljava/lang/String;

    .prologue
    .line 569
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "conditions"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 445
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v1}, Lorg/litepal/crud/DataHandler;->isAffectAllLines([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-object v0

    .line 448
    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 449
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 450
    .local v0, "whereArgs":[Ljava/lang/String;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected varargs getWhereClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "conditions"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 425
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lorg/litepal/crud/DataHandler;->isAffectAllLines([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-object v0

    .line 428
    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 429
    aget-object v0, p1, v2

    goto :goto_0
.end method

.method protected getWhereOfIdsWithOr(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 480
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .local v3, "whereClause":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 482
    .local v2, "needOr":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 490
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 482
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 483
    .local v0, "id":J
    if-eqz v2, :cond_1

    .line 484
    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :cond_1
    const/4 v2, 0x1

    .line 487
    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected varargs getWhereOfIdsWithOr([J)Ljava/lang/String;
    .locals 7
    .param p1, "ids"    # [J

    .prologue
    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    .local v3, "whereClause":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 503
    .local v2, "needOr":Z
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 511
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 503
    :cond_0
    aget-wide v0, p1, v4

    .line 504
    .local v0, "id":J
    if-eqz v2, :cond_1

    .line 505
    const-string v6, " or "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    :cond_1
    const/4 v2, 0x1

    .line 508
    const-string v6, "id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 503
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected giveBaseObjIdValue(Lorg/litepal/crud/DataSupport;J)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 199
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 200
    const-string v0, "baseObjId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-class v2, Lorg/litepal/crud/DataSupport;

    invoke-static {p1, v0, v1, v2}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected varargs isAffectAllLines([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "conditions"    # [Ljava/lang/Object;

    .prologue
    .line 465
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 466
    const/4 v0, 0x1

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mathQuery(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "conditions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 167
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static/range {p3 .. p3}, Lorg/litepal/util/BaseUtility;->checkConditionsCorrect([Ljava/lang/String;)V

    .line 168
    const/4 v9, 0x0

    .line 169
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 171
    .local v13, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/litepal/crud/DataHandler;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/litepal/crud/DataHandler;->getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    .line 171
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 173
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 175
    .local v10, "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v10, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 176
    .local v12, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v12, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 181
    .end local v10    # "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "method":Ljava/lang/reflect/Method;
    .end local v13    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v9, :cond_1

    .line 182
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_1
    return-object v13

    .line 178
    .restart local v13    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v11

    .line 179
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 181
    if-eqz v9, :cond_2

    .line 182
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 184
    :cond_2
    throw v1
.end method

.method protected putContentValues(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 253
    .local v1, "fieldValue":Ljava/lang/Object;
    const-string v4, "java.util.Date"

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 254
    check-cast v0, Ljava/util/Date;

    .line 255
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 257
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 258
    .local v3, "parameters":[Ljava/lang/Object;
    invoke-direct {p0, p2, v1, v3}, Lorg/litepal/crud/DataHandler;->getParameterTypes(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 259
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const-string v4, "put"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p3, v4, v3, v5, v2}, Lorg/litepal/crud/DynamicExecutor;->send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method protected putFieldsValue(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 223
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 228
    return-void

    .line 223
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 224
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    invoke-direct {p0, p1, v0, p3}, Lorg/litepal/crud/DataHandler;->putFieldsValueDependsOnSaveOrUpdate(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method protected putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 6
    .param p1, "dataSupport"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 309
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->shouldGetOrSet(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-direct {p0, p2}, Lorg/litepal/crud/DataHandler;->makeSetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "setMethodName":Ljava/lang/String;
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v5

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    .line 311
    invoke-static {p1, v0, v1, v2, v3}, Lorg/litepal/crud/DynamicExecutor;->send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 314
    .end local v0    # "setMethodName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 18
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p9, "foreignKeyAssociations":Ljava/util/List;, "Ljava/util/List<Lorg/litepal/crud/model/AssociationsInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v14, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v13, 0x0

    .line 121
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/litepal/crud/DataHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 122
    .local v17, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p1}, Lorg/litepal/crud/DataHandler;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "tableName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lorg/litepal/crud/DataHandler;->getCustomizedColumns([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "customizedColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 126
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 128
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    .line 129
    .local v16, "modelInstance":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, v16

    check-cast v0, Lorg/litepal/crud/DataSupport;

    move-object v4, v0

    .line 130
    const-string v7, "id"

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v13, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v8, v9}, Lorg/litepal/crud/DataHandler;->giveBaseObjIdValue(Lorg/litepal/crud/DataSupport;J)V

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3, v13}, Lorg/litepal/crud/DataHandler;->setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;)V

    .line 132
    if-eqz p9, :cond_1

    .line 133
    move-object/from16 v0, v16

    check-cast v0, Lorg/litepal/crud/DataSupport;

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/litepal/crud/DataHandler;->setAssociatedModel(Lorg/litepal/crud/DataSupport;)V

    .line 135
    :cond_1
    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 143
    .end local v16    # "modelInstance":Ljava/lang/Object;, "TT;"
    :cond_2
    if-eqz v13, :cond_3

    .line 144
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_3
    return-object v14

    .line 139
    .end local v5    # "tableName":Ljava/lang/String;
    .end local v6    # "customizedColumns":[Ljava/lang/String;
    .end local v17    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :catch_0
    move-exception v15

    .line 140
    .local v15, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    new-instance v4, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 143
    if-eqz v13, :cond_4

    .line 144
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 146
    :cond_4
    throw v4
.end method

.method protected setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;)V
    .locals 24
    .param p1, "modelInstance"    # Ljava/lang/Object;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 682
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local p3, "foreignKeyAssociations":Ljava/util/List;, "Ljava/util/List<Lorg/litepal/crud/model/AssociationsInfo;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_3

    .line 714
    if-eqz p3, :cond_2

    .line 715
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_d

    .line 735
    :cond_2
    return-void

    .line 682
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Field;

    .line 683
    .local v14, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v16

    .line 684
    .local v16, "getMethodName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v9, "id"

    .line 685
    .local v9, "columnName":Ljava/lang/String;
    :goto_2
    invoke-static {v9}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 686
    .local v8, "columnIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_0

    .line 687
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 688
    .local v10, "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    sget-object v22, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v22, v19, v21

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 689
    .local v17, "method":Ljava/lang/reflect/Method;
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v19, v21

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 690
    .local v18, "value":Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 691
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v19

    .line 692
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    .line 691
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 684
    .end local v8    # "columnIndex":I
    .end local v9    # "columnName":Ljava/lang/String;
    .end local v10    # "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "method":Ljava/lang/reflect/Method;
    .end local v18    # "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 694
    .restart local v8    # "columnIndex":I
    .restart local v9    # "columnName":Ljava/lang/String;
    .restart local v10    # "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v17    # "method":Ljava/lang/reflect/Method;
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_6

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    const-class v21, Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 695
    :cond_6
    const-string v19, "0"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 696
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .end local v18    # "value":Ljava/lang/Object;
    :cond_7
    :goto_3
    move-object/from16 v19, p1

    .line 710
    check-cast v19, Lorg/litepal/crud/DataSupport;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v14, v2}, Lorg/litepal/crud/DataHandler;->putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 697
    .restart local v18    # "value":Ljava/lang/Object;
    :cond_8
    const-string v19, "1"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 698
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 700
    .local v18, "value":Ljava/lang/Boolean;
    goto :goto_3

    .local v18, "value":Ljava/lang/Object;
    :cond_9
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    sget-object v21, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    const-class v21, Ljava/lang/Character;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 701
    :cond_a
    check-cast v18, Ljava/lang/String;

    .end local v18    # "value":Ljava/lang/Object;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    .line 702
    .local v18, "value":Ljava/lang/Character;
    goto :goto_3

    .local v18, "value":Ljava/lang/Object;
    :cond_b
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v19

    const-class v21, Ljava/util/Date;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 703
    check-cast v18, Ljava/lang/Long;

    .end local v18    # "value":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 704
    .local v12, "date":J
    const-wide/16 v22, 0x0

    cmp-long v19, v12, v22

    if-gtz v19, :cond_c

    .line 705
    const/16 v18, 0x0

    .line 706
    .restart local v18    # "value":Ljava/lang/Object;
    goto :goto_3

    .line 707
    .end local v18    # "value":Ljava/lang/Object;
    :cond_c
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    .local v18, "value":Ljava/util/Date;
    goto :goto_3

    .line 715
    .end local v8    # "columnIndex":I
    .end local v9    # "columnName":Ljava/lang/String;
    .end local v10    # "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "date":J
    .end local v14    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "getMethodName":Ljava/lang/String;
    .end local v17    # "method":Ljava/lang/reflect/Method;
    .end local v18    # "value":Ljava/util/Date;
    :cond_d
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/litepal/crud/model/AssociationsInfo;

    .line 717
    .local v7, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v7}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 718
    .local v15, "foreignKeyColumn":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 719
    .restart local v8    # "columnIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_1

    .line 720
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 723
    .local v4, "associatedClassId":J
    :try_start_0
    invoke-virtual {v7}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 722
    move-object/from16 v0, v19

    invoke-static {v0, v4, v5}, Lorg/litepal/crud/DataSupport;->find(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/litepal/crud/DataSupport;

    .line 725
    .local v6, "associatedObj":Lorg/litepal/crud/DataSupport;
    if-eqz v6, :cond_1

    .line 726
    move-object/from16 v0, p1

    check-cast v0, Lorg/litepal/crud/DataSupport;

    move-object/from16 v19, v0

    .line 727
    invoke-virtual {v7}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v21

    .line 726
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6}, Lorg/litepal/crud/DataHandler;->putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 729
    .end local v6    # "associatedObj":Lorg/litepal/crud/DataSupport;
    :catch_0
    move-exception v11

    .line 730
    .local v11, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v11}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected shouldGetOrSet(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "dataSupport"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 556
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "dataSupport"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 281
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->shouldGetOrSet(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    invoke-direct {p0, p2}, Lorg/litepal/crud/DataHandler;->makeGetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "getMethodName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, v1}, Lorg/litepal/crud/DynamicExecutor;->send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 286
    .end local v0    # "getMethodName":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
