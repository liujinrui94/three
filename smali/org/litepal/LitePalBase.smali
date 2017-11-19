.class public abstract Lorg/litepal/LitePalBase;
.super Ljava/lang/Object;
.source "LitePalBase.java"


# static fields
.field private static final GET_ASSOCIATIONS_ACTION:I = 0x1

.field private static final GET_ASSOCIATION_INFO_ACTION:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LitePalBase"


# instance fields
.field private mAssociationInfos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAssociationModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation
.end field

.field private typeChangeRules:[Lorg/litepal/tablemanager/typechange/OrmChange;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/litepal/tablemanager/typechange/OrmChange;

    const/4 v1, 0x0

    new-instance v2, Lorg/litepal/tablemanager/typechange/NumericOrm;

    invoke-direct {v2}, Lorg/litepal/tablemanager/typechange/NumericOrm;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/litepal/tablemanager/typechange/TextOrm;

    invoke-direct {v2}, Lorg/litepal/tablemanager/typechange/TextOrm;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/litepal/tablemanager/typechange/BooleanOrm;

    invoke-direct {v2}, Lorg/litepal/tablemanager/typechange/BooleanOrm;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 72
    new-instance v2, Lorg/litepal/tablemanager/typechange/DecimalOrm;

    invoke-direct {v2}, Lorg/litepal/tablemanager/typechange/DecimalOrm;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/litepal/tablemanager/typechange/DateOrm;

    invoke-direct {v2}, Lorg/litepal/tablemanager/typechange/DateOrm;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/litepal/LitePalBase;->typeChangeRules:[Lorg/litepal/tablemanager/typechange/OrmChange;

    .line 54
    return-void
.end method

.method private addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V
    .locals 2
    .param p1, "selfClassName"    # Ljava/lang/String;
    .param p2, "associatedClassName"    # Ljava/lang/String;
    .param p3, "classHoldsForeignKey"    # Ljava/lang/String;
    .param p4, "associateOtherModelFromSelf"    # Ljava/lang/reflect/Field;
    .param p5, "associateSelfFromOtherModel"    # Ljava/lang/reflect/Field;
    .param p6, "associationType"    # I

    .prologue
    .line 499
    new-instance v0, Lorg/litepal/crud/model/AssociationsInfo;

    invoke-direct {v0}, Lorg/litepal/crud/model/AssociationsInfo;-><init>()V

    .line 500
    .local v0, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v0, p1}, Lorg/litepal/crud/model/AssociationsInfo;->setSelfClassName(Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0, p2}, Lorg/litepal/crud/model/AssociationsInfo;->setAssociatedClassName(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p3}, Lorg/litepal/crud/model/AssociationsInfo;->setClassHoldsForeignKey(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p4}, Lorg/litepal/crud/model/AssociationsInfo;->setAssociateOtherModelFromSelf(Ljava/lang/reflect/Field;)V

    .line 504
    invoke-virtual {v0, p5}, Lorg/litepal/crud/model/AssociationsInfo;->setAssociateSelfFromOtherModel(Ljava/lang/reflect/Field;)V

    .line 505
    invoke-virtual {v0, p6}, Lorg/litepal/crud/model/AssociationsInfo;->setAssociationType(I)V

    .line 506
    iget-object v1, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 507
    return-void
.end method

.method private addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "associatedClassName"    # Ljava/lang/String;
    .param p3, "classHoldsForeignKey"    # Ljava/lang/String;
    .param p4, "associationType"    # I

    .prologue
    .line 469
    new-instance v0, Lorg/litepal/tablemanager/model/AssociationsModel;

    invoke-direct {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;-><init>()V

    .line 470
    .local v0, "associationModel":Lorg/litepal/tablemanager/model/AssociationsModel;
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/tablemanager/model/AssociationsModel;->setTableName(Ljava/lang/String;)V

    .line 471
    invoke-static {p2}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/tablemanager/model/AssociationsModel;->setAssociatedTableName(Ljava/lang/String;)V

    .line 472
    invoke-static {p3}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/litepal/tablemanager/model/AssociationsModel;->setTableHoldsForeignKey(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p4}, Lorg/litepal/tablemanager/model/AssociationsModel;->setAssociationType(I)V

    .line 474
    iget-object v1, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 475
    return-void
.end method

.method private analyzeClassFields(Ljava/lang/String;I)V
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 252
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 253
    .local v0, "dynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 254
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 264
    return-void

    .line 254
    :cond_0
    aget-object v2, v3, v4

    .line 255
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-direct {p0, v2}, Lorg/litepal/LitePalBase;->isPrivateAndNonPrimitive(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 256
    invoke-direct {p0, p1, v2, p2}, Lorg/litepal/LitePalBase;->oneToAnyConditions(Ljava/lang/String;Ljava/lang/reflect/Field;I)V

    .line 257
    invoke-direct {p0, p1, v2, p2}, Lorg/litepal/LitePalBase;->manyToAnyConditions(Ljava/lang/String;Ljava/lang/reflect/Field;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "dynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 261
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 262
    new-instance v4, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "can not find a class named "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private convertFieldToColumnModel(Ljava/lang/reflect/Field;)Lorg/litepal/tablemanager/model/ColumnModel;
    .locals 11
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 537
    const/4 v2, 0x0

    .line 538
    .local v2, "columnType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 539
    .local v4, "fieldType":Ljava/lang/String;
    iget-object v9, p0, Lorg/litepal/LitePalBase;->typeChangeRules:[Lorg/litepal/tablemanager/typechange/OrmChange;

    array-length v10, v9

    const/4 v8, 0x0

    :goto_0
    if-lt v8, v10, :cond_2

    .line 545
    :cond_0
    const/4 v5, 0x1

    .line 546
    .local v5, "nullable":Z
    const/4 v7, 0x0

    .line 547
    .local v7, "unique":Z
    const-string v3, ""

    .line 548
    .local v3, "defaultValue":Ljava/lang/String;
    const-class v8, Lorg/litepal/annotation/Column;

    invoke-virtual {p1, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/litepal/annotation/Column;

    .line 549
    .local v0, "annotation":Lorg/litepal/annotation/Column;
    if-eqz v0, :cond_1

    .line 550
    invoke-interface {v0}, Lorg/litepal/annotation/Column;->nullable()Z

    move-result v5

    .line 551
    invoke-interface {v0}, Lorg/litepal/annotation/Column;->unique()Z

    move-result v7

    .line 552
    invoke-interface {v0}, Lorg/litepal/annotation/Column;->defaultValue()Ljava/lang/String;

    move-result-object v3

    .line 554
    :cond_1
    new-instance v1, Lorg/litepal/tablemanager/model/ColumnModel;

    invoke-direct {v1}, Lorg/litepal/tablemanager/model/ColumnModel;-><init>()V

    .line 555
    .local v1, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/litepal/tablemanager/model/ColumnModel;->setColumnName(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v1, v2}, Lorg/litepal/tablemanager/model/ColumnModel;->setColumnType(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v1, v5}, Lorg/litepal/tablemanager/model/ColumnModel;->setIsNullable(Z)V

    .line 558
    invoke-virtual {v1, v7}, Lorg/litepal/tablemanager/model/ColumnModel;->setIsUnique(Z)V

    .line 559
    invoke-virtual {v1, v3}, Lorg/litepal/tablemanager/model/ColumnModel;->setDefaultValue(Ljava/lang/String;)V

    .line 560
    return-object v1

    .line 539
    .end local v0    # "annotation":Lorg/litepal/annotation/Column;
    .end local v1    # "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    .end local v3    # "defaultValue":Ljava/lang/String;
    .end local v5    # "nullable":Z
    .end local v7    # "unique":Z
    :cond_2
    aget-object v6, v9, v8

    .line 540
    .local v6, "ormChange":Lorg/litepal/tablemanager/typechange/OrmChange;
    invoke-virtual {v6, v4}, Lorg/litepal/tablemanager/typechange/OrmChange;->object2Relation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    if-nez v2, :cond_0

    .line 539
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 518
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 519
    .local v1, "genericType":Ljava/lang/reflect/Type;
    if-eqz v1, :cond_0

    .line 520
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 521
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 522
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    check-cast v0, Ljava/lang/Class;

    .line 523
    .local v0, "genericArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 526
    .end local v0    # "genericArg":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isPrivateAndNonPrimitive(Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 275
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private manyToAnyConditions(Ljava/lang/String;Ljava/lang/reflect/Field;I)V
    .locals 21
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/litepal/LitePalBase;->isCollection(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/litepal/LitePalBase;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "genericTypeName":Ljava/lang/String;
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    .line 398
    .local v17, "reverseDynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v19

    .line 401
    .local v19, "reverseFields":[Ljava/lang/reflect/Field;
    const/16 v16, 0x0

    .line 402
    .local v16, "reverseAssociations":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, v19

    array-length v2, v0

    if-lt v15, v2, :cond_1

    .line 441
    if-nez v16, :cond_0

    .line 442
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_8

    .line 444
    const/4 v2, 0x2

    .line 443
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    .end local v4    # "genericTypeName":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v16    # "reverseAssociations":Z
    .end local v17    # "reverseDynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v19    # "reverseFields":[Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-void

    .line 403
    .restart local v4    # "genericTypeName":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v16    # "reverseAssociations":Z
    .restart local v17    # "reverseDynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v19    # "reverseFields":[Ljava/lang/reflect/Field;
    :cond_1
    aget-object v7, v19, v15

    .line 405
    .local v7, "reverseField":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 406
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v18

    .line 410
    .local v18, "reverseFieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 411
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 413
    const/4 v2, 0x2

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 418
    :cond_2
    :goto_2
    const/16 v16, 0x1

    .line 402
    .end local v18    # "reverseFieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 414
    .restart local v18    # "reverseFieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 416
    const/4 v8, 0x2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v5, v4

    move-object/from16 v6, p2

    .line 415
    invoke-direct/range {v2 .. v8}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto :goto_2

    .line 423
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/litepal/LitePalBase;->isCollection(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 424
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lorg/litepal/LitePalBase;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v20

    .line 425
    .local v20, "reverseGenericTypeName":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 427
    const/4 v2, 0x0

    .line 428
    const/4 v3, 0x3

    .line 427
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 433
    :cond_6
    :goto_4
    const/16 v16, 0x1

    goto :goto_3

    .line 429
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 430
    const/4 v5, 0x0

    .line 431
    const/4 v8, 0x3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    .line 430
    invoke-direct/range {v2 .. v8}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto :goto_4

    .line 445
    .end local v7    # "reverseField":Ljava/lang/reflect/Field;
    .end local v18    # "reverseFieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v20    # "reverseGenericTypeName":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 447
    const/4 v13, 0x0

    const/4 v14, 0x2

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object v10, v4

    move-object v11, v4

    move-object/from16 v12, p2

    .line 446
    invoke-direct/range {v8 .. v14}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto/16 :goto_1
.end method

.method private oneToAnyConditions(Ljava/lang/String;Ljava/lang/reflect/Field;I)V
    .locals 23
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    .line 308
    .local v16, "fieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v3

    invoke-virtual {v3}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    .line 310
    .local v20, "reverseDynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v22

    .line 313
    .local v22, "reverseFields":[Ljava/lang/reflect/Field;
    const/16 v19, 0x0

    .line 316
    .local v19, "reverseAssociations":Z
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v22

    array-length v3, v0

    move/from16 v0, v18

    if-lt v0, v3, :cond_1

    .line 353
    if-nez v19, :cond_0

    .line 354
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_8

    .line 355
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    .end local v18    # "i":I
    .end local v19    # "reverseAssociations":Z
    .end local v20    # "reverseDynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v22    # "reverseFields":[Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-void

    .line 317
    .restart local v18    # "i":I
    .restart local v19    # "reverseAssociations":Z
    .restart local v20    # "reverseDynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v22    # "reverseFields":[Ljava/lang/reflect/Field;
    :cond_1
    aget-object v8, v22, v18

    .line 318
    .local v8, "reverseField":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 319
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v21

    .line 323
    .local v21, "reverseFieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 324
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    .line 325
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 325
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 331
    :cond_2
    :goto_2
    const/16 v19, 0x1

    .line 316
    .end local v21    # "reverseFieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 327
    .restart local v21    # "reverseFieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 328
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    .line 328
    invoke-direct/range {v3 .. v9}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto :goto_2

    .line 336
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/litepal/LitePalBase;->isCollection(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 337
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/litepal/LitePalBase;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v17

    .line 338
    .local v17, "genericTypeName":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 339
    const/4 v3, 0x1

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 340
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 341
    const/4 v4, 0x2

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v4}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 346
    :cond_6
    :goto_4
    const/16 v19, 0x1

    goto :goto_3

    .line 342
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 343
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 344
    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    .line 343
    invoke-direct/range {v3 .. v9}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto :goto_4

    .line 357
    .end local v8    # "reverseField":Ljava/lang/reflect/Field;
    .end local v17    # "genericTypeName":Ljava/lang/String;
    .end local v21    # "reverseFieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_0

    .line 358
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    .line 359
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v13, p2

    .line 358
    invoke-direct/range {v9 .. v15}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 142
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/litepal/LitePalBase;->analyzeClassFields(Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    return-object v0
.end method

.method protected getAssociations(Ljava/util/List;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "classNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 121
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    iget-object v1, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    return-object v1

    .line 124
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    .local v0, "className":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/litepal/LitePalBase;->analyzeClassFields(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "associatedTableName"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSupportedFields(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v8, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    .local v1, "dynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 165
    .local v6, "fields":[Ljava/lang/reflect/Field;
    array-length v10, v6

    const/4 v9, 0x0

    :goto_0
    if-lt v9, v10, :cond_0

    .line 179
    return-object v8

    .line 161
    .end local v1    # "dynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v9, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "can not find a class named "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 165
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v1    # "dynamicClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "fields":[Ljava/lang/reflect/Field;
    :cond_0
    aget-object v3, v6, v9

    .line 166
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v11, Lorg/litepal/annotation/Column;

    invoke-virtual {v3, v11}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/litepal/annotation/Column;

    .line 167
    .local v0, "annotation":Lorg/litepal/annotation/Column;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/litepal/annotation/Column;->ignore()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 165
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 170
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 171
    .local v7, "modifiers":I
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 172
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 173
    .local v5, "fieldTypeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, "fieldType":Ljava/lang/String;
    invoke-static {v4}, Lorg/litepal/util/BaseUtility;->isFieldTypeSupported(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 175
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected getTableModel(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;
    .locals 7
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "tableName":Ljava/lang/String;
    new-instance v3, Lorg/litepal/tablemanager/model/TableModel;

    invoke-direct {v3}, Lorg/litepal/tablemanager/model/TableModel;-><init>()V

    .line 101
    .local v3, "tableModel":Lorg/litepal/tablemanager/model/TableModel;
    invoke-virtual {v3, v4}, Lorg/litepal/tablemanager/model/TableModel;->setTableName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3, p1}, Lorg/litepal/tablemanager/model/TableModel;->setClassName(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 104
    .local v2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 108
    return-object v3

    .line 104
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 105
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-direct {p0, v1}, Lorg/litepal/LitePalBase;->convertFieldToColumnModel(Ljava/lang/reflect/Field;)Lorg/litepal/tablemanager/model/ColumnModel;

    move-result-object v0

    .line 106
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {v3, v0}, Lorg/litepal/tablemanager/model/TableModel;->addColumnModel(Lorg/litepal/tablemanager/model/ColumnModel;)V

    goto :goto_0
.end method

.method protected isCollection(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->isList(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->isSet(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isIdColumn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 224
    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isList(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method protected isSet(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
